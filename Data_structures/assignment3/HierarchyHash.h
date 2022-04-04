#ifndef HIERARCHYHASH_H
#define HIERARCHYHASH_H

#include <iostream>
#include "FlatHash.h"

class HierarchyHash
{
private:
  unsigned int** hashtable;
  // Variable for overflow handling
  enum overflow_handle flag;
  // Loading factor
  float alpha;
  // Size(range) of full hash table. Initially 1000
  unsigned int table_size;
  // Size of subhash table. Fixed by 100
  unsigned int sub_table_size;
  // Nums of keys
  unsigned int num_of_keys;

  int insert_linear(const unsigned int key);
  int insert_quadratic(const unsigned int key);

  int remove_linear(const unsigned int key);
  int remove_quadratic(const unsigned int key);

  int search_linear(const unsigned int key);
  int search_quadratic(const unsigned int key);


public:
  HierarchyHash(enum overflow_handle _flag, float _alpha);

  ~HierarchyHash();

  unsigned int hashFunction(const unsigned int key) { return key % table_size; }

  unsigned int getTableSize() { return table_size; }

  unsigned int getNumofKeys() { return num_of_keys; }

  // Return the size of allocated sub hash table
  unsigned int getAllocatedSize();

  // Return time cost
  int insert(const unsigned int key);

  // Return time cost
  int remove(const unsigned int key);

  // Return time cost
  int search(const unsigned int key);

  // Delete tombstones
  void clearTombstones();

  void print();
};

HierarchyHash::HierarchyHash(enum overflow_handle _flag, float _alpha)
{
  // Initial map size is 1000
  table_size = 1000;
  // Table size is fixed to 100
  sub_table_size = 100;
  flag = _flag;
  alpha = _alpha;

  // Write your code
  num_of_keys = 0;
  hashtable = new unsigned int*[table_size / sub_table_size];
  for(unsigned int i = 0; i < table_size / sub_table_size; i++) hashtable[i] = NULL;
}

HierarchyHash::~HierarchyHash()
{
  // Write your code
  for(unsigned int i = 0; i < table_size / sub_table_size; i++){
    if(hashtable[i] != NULL) delete[] hashtable[i];
  }
  delete[] hashtable;

}

unsigned int HierarchyHash::getAllocatedSize()
{
  // Write your code
  unsigned int cnt = 0;
  for(unsigned int i = 0; i < table_size / sub_table_size; i++){
    if(hashtable[i] != NULL) cnt += sub_table_size;
  }
  return cnt;
}

int HierarchyHash::insert_linear(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  int timecost = 0;
  bool found_emtpy = false;

  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available, create one
    if(subtable == NULL){
      subtable = new unsigned int[sub_table_size];
      for(unsigned int i = 0; i < sub_table_size; i++) subtable[i] = 0;
      hashtable[probe / sub_table_size] = subtable;
    }
    if(subtable[current_pos] == 0){
      found_emtpy = true; break;
    } 
    if(subtable[current_pos] == key) break;
  }

  // If there is an empty slot
  if(found_emtpy){
    num_of_keys++;
    subtable[current_pos] = key;
    return timecost;
  }

  // If the key already exists or the table is full
  return -timecost;
}

int HierarchyHash::insert_quadratic(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  int timecost = 0;
  bool found_emtpy = false;
  bool already_inserted = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + 1ull * i * i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available, create one
    if(subtable == NULL){
      subtable = new unsigned int[sub_table_size];
      for(unsigned int i = 0; i < sub_table_size; i++) subtable[i] = 0;
      hashtable[probe / sub_table_size] = subtable;
    }
    if(subtable[current_pos] == 0 || subtable[current_pos] > VALUE_LIMIT){
      found_emtpy = true; break;
    } 
    if(subtable[current_pos] == key){
      already_inserted = true; break;
    }
  }

  if(found_emtpy){ // If an empty slot is found
    num_of_keys++;
    subtable[current_pos] = key;
    return timecost;
  } else if(already_inserted){ // If the key already exists
    return -timecost; 
  } else{ // If it cannot find a bucket, switch to linear probing
    int linear_cost = insert_linear(key);
    if(linear_cost < 0) return -timecost + linear_cost;
    else return timecost + linear_cost;
  }
}

int HierarchyHash::insert(const unsigned int key)
{
  // You have to implement two overflow handling by using flag
  // Write your code
  int timecost = 0;
  if(flag == LINEAR_PROBING) timecost = insert_linear(key);
  else timecost = insert_quadratic(key);

  // Resize and rehash if necessary
  if(num_of_keys >= alpha * table_size){
    unsigned int **dummy_table = hashtable;
    hashtable = new unsigned int*[2 * table_size / sub_table_size];
    for(unsigned int i = 0; i < 2 * table_size / sub_table_size; i++) hashtable[i] = NULL;
    unsigned int old_table_size = table_size;
    table_size *= 2;
    num_of_keys = 0;
    for(unsigned int i = 0; i < old_table_size / sub_table_size; i++){
      if(dummy_table[i] == NULL) continue;
      for(unsigned int j = 0; j < sub_table_size; j++){
        unsigned int val = dummy_table[i][j];
        if(1 <= val && val <= VALUE_LIMIT){
          if(flag == LINEAR_PROBING) insert_linear(val);
          else insert_quadratic(val);
        }
      }
    }
    for(unsigned int i = 0; i < old_table_size / sub_table_size; i++){
      if(dummy_table[i] != NULL) delete[] dummy_table[i];
    }
    delete[] dummy_table;
  }

  return timecost;
}

int HierarchyHash::remove_linear(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  unsigned int deleted_pos = hashed_val;
  int timecost = 0;
  bool found = false;

  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available
    if(subtable == NULL) break;
    // If the current position is empty
    if(subtable[current_pos] == 0) break;
    // Found the key
    if(subtable[current_pos] == key){
      found = true; deleted_pos = probe; break;
    }
  }

  if(found){
    // Delete
    num_of_keys--;
    subtable[current_pos] = 0;

    // Shifting
    unsigned int empty_slot = deleted_pos;
    for(unsigned int i = 1; i < table_size; i++){
      unsigned int pos = (empty_slot + i) % table_size;
      subtable = hashtable[pos / sub_table_size];
      current_pos = pos % sub_table_size;
      // If the current subtable is not available
      if(subtable == NULL) break;
      unsigned int val = subtable[current_pos];
      // If the current position is empty
      if(val == 0) break;
      //Linear probing
      subtable[current_pos] = 0;
      num_of_keys--;
      insert_linear(val);
    }
    return timecost;
  } else{
    return -timecost;
  }
}

int HierarchyHash::remove_quadratic(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  int timecost = 0;
  bool found_key = false;
  bool found_empty = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + 1ull * i * i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available
    if(subtable == NULL) break;
    // If the current position is empty
    if(subtable[current_pos] == 0){
      found_empty = true; break;
    }
    // If the current position is empty
    if(subtable[current_pos] == key){
      found_key = true; break;
    }
  }

  if(found_key){ // If the key is found
    num_of_keys--;
    subtable[current_pos] = VALUE_LIMIT + 1; // Tombstone
    return timecost;
  } else if(found_empty){ // If the key doesnot exist
    return -timecost;
  } else{ // If the key cannot be found by quadratic probing
    for(unsigned int i = 0; i < table_size; i++){
      unsigned int probe = (hashed_val + i) % table_size;
      subtable = hashtable[probe / sub_table_size];
      current_pos = probe % sub_table_size;
      timecost++;
      if(subtable[current_pos] == 0) break;
      if(subtable[current_pos] == key){
        found_key = true; break;
      }
    }
    if(found_key){ // If the key is found
      num_of_keys--;
      subtable[current_pos] = VALUE_LIMIT + 1; // Tombstone
      return timecost;
    } else{// If the key doesnot exist
      return -timecost;
    }
  }
}

int HierarchyHash::remove(const unsigned int key)
{
  // Write your code
  if(flag == LINEAR_PROBING) return remove_linear(key);
  else return remove_quadratic(key);

  // Nullify the pointers
  for(unsigned int i = 0; i < table_size / sub_table_size; i++){
    unsigned int *subtable = hashtable[i];
    if(subtable == NULL) continue;
    bool is_empty = true;
    for(unsigned int i = 0; i < sub_table_size; i++){
      if(subtable[i] != 0){
        is_empty = false;
        break;
      }
    }
    if(is_empty){
      delete[] subtable;
      hashtable[i] = NULL;
    }
  }
}

int HierarchyHash::search_linear(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  int timecost = 0;
  bool found = false;

  // Linear probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available
    if(subtable == NULL) break;
    // If the current position is empty
    if(subtable[current_pos] == 0) break;
    // Found the key
    if(subtable[current_pos] == key){
      found = true; break;
    }
  }

  if(found) return timecost;
  else return -timecost;
}

int HierarchyHash::search_quadratic(const unsigned int key){
  unsigned int hashed_val = hashFunction(key);
  unsigned int *subtable = hashtable[hashed_val / sub_table_size];
  unsigned int current_pos = hashed_val % sub_table_size;
  int timecost = 0;
  bool found_key = false;
  bool found_empty = false;

  // Quadratic probing
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int probe = (hashed_val + 1ull * i * i) % table_size;
    subtable = hashtable[probe / sub_table_size];
    current_pos = probe % sub_table_size;
    timecost++;
    // If the current subtable is not available
    if(subtable == NULL) break;
    // If the current position is empty
    if(subtable[current_pos] == 0){
      found_empty = true; break;
    }
    // If the current position is empty
    if(subtable[current_pos] == key){
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

int HierarchyHash::search(const unsigned int key)
{
  // Write your code
  if(flag == LINEAR_PROBING) return search_linear(key);
  else return search_quadratic(key);
}

void HierarchyHash::clearTombstones()
{
  // Write your code
  if(flag == LINEAR_PROBING) return;
  unsigned int **dummy_table = hashtable;
  hashtable = new unsigned int*[table_size / sub_table_size];
  for(unsigned int i = 0; i < table_size / sub_table_size; i++) hashtable[i] = NULL;
  num_of_keys = 0;
  for(unsigned int i = 0; i < table_size; i++){
    unsigned int val = dummy_table[i / sub_table_size][i % sub_table_size];
    if(1 <= val && val <= VALUE_LIMIT) insert(val);
  }
  for(unsigned int i = 0; i < table_size / sub_table_size; i++){
    if(dummy_table[i] != NULL) delete[] dummy_table[i];
  }
  delete[] dummy_table;
}

void HierarchyHash::print()
{
  // Print valid key pair for each sub hash table - subtable_id:(index1:key1,index2:key2)
  // Seperate each sub table by endl
  // Give **NO** space between each character
  // e.g., 0:(1:3,3:7,5:1)
  //       1:(101:2,192:10)
  //       9:(902:90,938:82)

  // Exceptionally, keep this code only for the case there is no key in the table
  if( getNumofKeys() == 0){
    std::cout << "()" << std::endl;
    return;
  }

  // Write your code
  for(unsigned int i = 0; i < table_size / sub_table_size; i++){
    unsigned int *subtable = hashtable[i];
    if(subtable == NULL) continue;
    std::cout << i << ":(";
    bool first = true;
    for(unsigned int j = 0; j < sub_table_size; j++){
      unsigned int key = subtable[j];
      if(1 <= key && key <= VALUE_LIMIT){
        if(first) first = false;
        else std::cout << ',';
        std::cout << i * sub_table_size + j << ':' << key;
      }
    }
    std::cout << ')' << std::endl;
  }

}

#endif
