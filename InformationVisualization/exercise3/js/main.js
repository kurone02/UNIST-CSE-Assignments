d3.csv('data/owid-covid-data.csv')
	.then(data => {

        data.map(function(el){
            el["percent_fully"] = el["people_fully_vaccinated"] / el["population"];
            el["total_percent"] = el["people_vaccinated"] / el["population"];
            el["percent_partly"] = el["total_percent"] - el["percent_fully"];
        });
        const share = data.filter(el => el.people_vaccinated & el.people_fully_vaccinated)
        const getRecent = arr => { 
            const res = [], map = {};
         
            arr.forEach(el => {
                //store the index
               if (!(el['location'] in map)) {
                  map[el['location']] = res.push(el) - 1;
                  return;
               };
               //compare date
               if(res[map[el['location']]]['date'] < el['date']){
                  res[map[el['location']]] = el;
               };
            });
            return res;
        };

        const vaccinated = getRecent(share);
        vaccinated.sort(function(a, b){
            return b["total_percent"] - a["total_percent"]
        })

        document.getElementById('start_date').value = "2020-02-24";
        document.getElementById('end_date').value = "2023-02-27";

        const uniqueCountryNames = Array.from(d3.group(data, d => d.location));
        createCheckBoxList(uniqueCountryNames);

        drawLineChart(data);

        document.getElementById("chart_toggle").addEventListener("change", () => {
            let is_line = document.getElementById("line").checked;
            if(is_line) {
                document.getElementById("graph_name").textContent = "Line chart";
                document.getElementById("country_picker").removeEventListener("change", updateCharts);
                drawLineChart(data);
            } else {
                document.getElementById("graph_name").textContent = "Bar chart";
                document.getElementById("country_picker").removeEventListener("change", updateCharts);
                document.getElementById("date_picker").removeEventListener("change", updateCharts);
                drawBarChart(vaccinated.filter(el => el.total_percent <= 1));
            }
        });

	})
 	.catch(error => {
        console.error(error);
        console.error('Error loading the data');
});