
function extractAllData(file) {
    let data = file.columns.slice(4, -1).map(function(column) {
        return file.map(function(d) {
            return +d[column];
        });
    });
    return data;
}


function getAllCountries(file) {
    let data = file.columns.slice(0, 1).map(function(column) {
        return file.map(function(d) {
            return d[column];
        });
    });
    return data;
}


function combineData(fertility_rate, life_expectancy, population) {
    let fertility_rates = extractAllData(fertility_rate);
    let life_expectancies = extractAllData(life_expectancy);
    let populations = extractAllData(population);

    let country_names = getAllCountries(population)[0];


    let num_years = populations.length;
    let num_countries = country_names.length;
    let combinedData = [];
    for(let i = 0; i < num_years; i++) {
        let fertility_in_year = fertility_rates[i];
        let life_in_year = life_expectancies[i];
        let pop_in_year = populations[i];
        
        let data = [];
        for(let j = 0; j < num_countries; j++) {
            let country_name = country_names[j];
            let fertility = fertility_in_year[j];
            let life = life_in_year[j];
            let pop = pop_in_year[j];
            if(fertility == 0 || life == 0 || pop == 0) {
                continue;
            }
            data.push({ 
                "country": country_name,
                "fertility_rate": fertility,
                "life_expectency": life,
                "population": pop,
            }); 
        }

        combinedData.push(data);
    }

    return combinedData;
}


function getMinMax(data) {
    let allData = extractAllData(data);
    let min_value = d3.min(allData, (d) =>  d3.min(d));
    let max_value = d3.max(allData, (d) =>  d3.max(d));
    return [min_value, max_value];
}