#ifndef FLATHASH_H
#define FLATHASH_H

#include <iostream>

const int VALUE_LIMIT = 1e6;

// Flag(hint) for overflow handling
enum overflow_handle {
  LINEAR_PROBING = 0,
  QUADRATIC_PROBING
};

class FlatHash
{
private:
  unsigned int* hashtable;
  // Variable for overflow handling
  enum overflow_handle flag;
  // Loading factor
  float alpha;
  // Size of hash table
  unsigned int table_size;
  // Nums of keys
  unsigned int num_of_keys;

protected:
  overflow_handle get_flag();
  bool resize_threshold();
  void resize_hashtable();

  unsigned int get_at_index(const unsigned int index);

  int insert_linear(const unsigned int key);
  int insert_quadratic(const unsigned int key);

  int remove_linear(const unsigned int key);
  int remove_quadratic(const unsigned int key);

  int search_linear(const unsigned int key);
  int search_quadratic(const unsigned int key);

public:
  FlatHash(enum overflow_handle _flag, float _alpha);

  ~FlatHash();

  unsigned int hashFunction(const unsigned int key) { return key % table_size; }

  unsigned int getTableSize() { return table_size; }

  unsigned int getNumofKeys() { return num_of_keys; }

  // Return time cost
  int insert(const unsigned int key);

  // Remove function in lecture. Return time cost
  int remove(const unsigned int key);

  // Return time cost
  int search(const unsigned int key);

  // Delete tombstones
  void clearTombstones();

  void print();
};

FlatHash::FlatHash(enum overflow_handle _flag, float _alpha)
{
  // Initial table size is 1000 
  table_size = 1000;
  num_of_keys = 0;
  flag = _flag;
  alpha = _alpha;
  
  // Write your code
  hashtable = new unsigned int[table_size];
  for(unsigned int i = 0; i < table_size; i++) hashtable[i] = 0;
}

FlatHash::~FlatHash()
{
  // Write your code
  delete[] hashtable;
}

overflow_handle FlatHash::get_flag(){
  return flag;
}

bool FlatHash::resize_threshold(){
  return num_of_keys >= alpha * table_size;
}

void FlatHash::resize_hashtable(){
  unsigned int *dummy_table = hashtable;
  hashtable = new unsigned int[2 * table_size];
  for(unsigned int i = 0; i < 2 * table_size; i++) hashtable[i] = 0;
  unsigned int old_table_size = table_size;
  table_size *= 2;
  num_of_keys = 0;
  for(unsigned int i = 0; i < old_table_size; i++){
    unsigned int val = dummy_table[i];
    if(1 <= val && val <= VALUE_LIMIT){
      if(flag == LINEAR_PROBING) insert_linear(val);
      else insert_quadratic(val);
    }
  }
  delete[] dummy_table;
}

unsigned int FlatHash::get_at_index(const unsigned int index){
  return hashtable[index];
}

int FlatHash::insert_linear(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found_emtpy = false;
  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    timecost++;
    if(hashtable[bucket] == 0){
      found_emtpy = true; break;
    } 
    if(hashtable[bucket] == key) break;
    bucket = (bucket + 1) % table_size;
  }

  // If there is an empty slot
  if(found_emtpy){
    num_of_keys++;
    hashtable[bucket] = key;
    return timecost;
  }

  // If the key already exists or the table is full
  return -timecost;
}

int FlatHash::insert_quadratic(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found_emtpy = false;
  bool already_inserted = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (bucket + 1ull * i * i) % table_size;
    timecost++;
    if(hashtable[probe] == 0 || hashtable[probe] > VALUE_LIMIT){
      bucket = probe; found_emtpy = true; break;
    } 
    if(hashtable[probe] == key){
      already_inserted = true; break;
    }
  }

  if(found_emtpy){ // If an empty slot is found
    num_of_keys++;
    hashtable[bucket] = key;
    return timecost;
  } else if(already_inserted){ // If the key already exists
    return -timecost; 
  } else{ // If it cannot find a bucket, switch to linear probing
    int linear_cost = insert_linear(key);
    if(linear_cost < 0) return -timecost + linear_cost;
    else return timecost + linear_cost;
  }
}

int FlatHash::insert(const unsigned int key)
{
  // You have to implement two overflow handling by using flag
  // Write your code
  int timecost = 0;
  if(flag == LINEAR_PROBING) timecost = insert_linear(key);
  else timecost = insert_quadratic(key);

  // Resize and rehash if necessary
  if(resize_threshold()) resize_hashtable();

  return timecost;
}

int FlatHash::remove_linear(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found = false;

  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    timecost++;
    if(hashtable[bucket] == 0) break;
    if(hashtable[bucket] == key){
      found = true; break;
    }
    bucket = (bucket + 1) % table_size;
  }

  if(found){
    // Delete
    num_of_keys--;
    hashtable[bucket] = 0;

    // Shifting
    for(unsigned int i = 1; i < table_size; i++){
      unsigned int pos = (bucket + i) % table_size;
      unsigned int val = hashtable[pos];
      if(val == 0) break;
      //Linear probing
      hashtable[pos] = 0;
      num_of_keys--;
      insert_linear(val);
    }
    return timecost;
  } else{
    return -timecost;
  }
}

int FlatHash::remove_quadratic(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found_key = false;
  bool found_empty = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (bucket + 1ull * i * i) % table_size;
    timecost++;
    if(hashtable[probe] == 0){
      found_empty = true; break;
    }
    if(hashtable[probe] == key){
      found_key = true; bucket = probe; break;
    }
  }

  if(found_key){ // If the key is found
    num_of_keys--;
    hashtable[bucket] = VALUE_LIMIT + 1; // Tombstone
    return timecost;
  } else if(found_empty){ // If the key doesnot exist
    return -timecost;
  } else{ // If the key cannot be found by quadratic probing
    for(unsigned int i = 0; i < table_size; i++){
      unsigned int probe = (bucket + i) % table_size;
      timecost++;
      if(hashtable[probe] == 0) break;
      if(hashtable[probe] == key){
        found_key = true; bucket = probe; break;
      }
    }
    if(found_key){ // If the key is found
      num_of_keys--;
      hashtable[bucket] = VALUE_LIMIT + 1; // Tombstone
      return timecost;
    } else{// If the key doesnot exist
      return -timecost;
    }
  }
}

int FlatHash::remove(const unsigned int key)
{
  // Write your code
  if(flag == LINEAR_PROBING) return remove_linear(key);
  else return remove_quadratic(key);
}

int FlatHash::search_linear(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found = false;

  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    timecost++;
    if(hashtable[bucket] == 0) break;
    if(hashtable[bucket] == key){
      found = true; break;
    }
    bucket = (bucket + 1) % table_size;
  }

  if(found) return timecost;
  else return -timecost;
}

int FlatHash::search_quadratic(const unsigned int key){
  unsigned int bucket = hashFunction(key);
  int timecost = 0;
  bool found_key = false;
  bool found_empty = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (bucket + 1ull * i * i) % table_size;
    timecost++;
    if(hashtable[probe] == 0){
      found_empty = true; break;
    }
    if(hashtable[probe] == key){
      found_key = true; break;
    }
  }

  if(found_key) return timecost; // The key is found
  else if(found_empty) return -timecost; // The key doesnot exist
  else{ // The key cannot be found by quadratic probing
    int linear_cost = search_linear(key);
    if(linear_cost < 0) return -timecost + linear_cost;
    else return timecost + linear_cost;
  }
}

int FlatHash::search(const unsigned int key)
{
  // Write your code
  if(flag == LINEAR_PROBING) return search_linear(key);
  else return search_quadratic(key);
}

void FlatHash::clearTombstones()
{
  // Write your code
  if(flag == LINEAR_PROBING) return;
  unsigned int *dummy_table = hashtable;
  hashtable = new unsigned int[table_size];
  for(unsigned int i = 0; i < table_size; i++) hashtable[i] = 0;
  num_of_keys = 0;
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int val = dummy_table[i];
    if(1 <= val && val <= VALUE_LIMIT) insert(val);
  }
  delete[] dummy_table;
}

void FlatHash::print()
{
  // Print valid key pair - (index1:key1,index2:key2)
  // Give **NO** space between each character
  // e.g., (1:3,3:7,5:1)
  std::cout << "(";

  // Write your code
  bool first = true;
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int key = hashtable[i];
    if(1 <= key && key <= VALUE_LIMIT){
      if(first) first = false;
      else std::cout << ',';
      std::cout << i << ':' << key;
    }
  }

  std::cout << ")" << std::endl;
}

#endif
