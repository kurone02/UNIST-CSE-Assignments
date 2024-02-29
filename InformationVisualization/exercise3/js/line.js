function drawLineChart(data){
    const margin = {top: 5, right: 100, bottom: 50, left: 100};
    let width = document.getElementById("graph_area").offsetWidth - margin.left - margin.right;
    let height = 600 - margin.top - margin.bottom;

    // Reset the graph
    d3.select("#chart").select("svg").remove()
    d3.select("#legend").select("svg").remove()

    // Create SVG element
    const svg = d3.select("#chart")
                    .append("svg")
                    .attr("width", width + margin.left + margin.right)
                    .attr("height", height + margin.top + margin.bottom)
                    .append("g")
                    .attr("transform", `translate(${margin.left},${margin.top})`);

    // Get date from DOM
    const start_date = Date.parse(document.getElementById('start_date').value);
    const end_date = Date.parse(document.getElementById('end_date').value);

    // Parse date and set the scale ranges
    const xScale = d3.scaleTime()
                        .domain(d3.extent([start_date, end_date]))
                        .range([0, width]);
    const yScale = d3.scaleLinear()
                        .range([height, 0]);

    // Add X-axis
    svg.append("g")
        .attr("id", "x-axis")
        .attr("transform", `translate(0,${height})`)
        .call(d3.axisBottom(xScale));

    // Add Y-axis
    svg.append("g")
        .attr("id", "y-axis")
        .call(d3.axisLeft(yScale));
    
    // Define a scale for color 
    const color_list = ['#e41a1c', '#377eb8', '#4daf4a', '#984ea3', '#ff7f00'];
    const cScale = d3.scaleOrdinal().range(color_list)

    // Function to update the charts based on the selected checkboxes
    updateCharts = () => {

        // Get the selected countries
        let form = document.getElementById("country_picker");
        let selectedCountries = [];
        let checkboxes = form.elements["countries"];
        for (let i = 0; i < checkboxes.length; i++) {
            if (checkboxes[i].checked) {
                selectedCountries.push(checkboxes[i].value);
            }
        }

        // Filter the data based on selected countries
        let filteredData = data.filter(d => +selectedCountries.includes(d.location));

        // Get date from DOM
        const start_date = removeTime(new Date(document.getElementById('start_date').value));
        const end_date = removeTime(new Date(document.getElementById('end_date').value));
        
        // Update the X-axis domain
        const dateExtent = d3.extent([start_date, end_date]);
        xScale.domain(dateExtent);
        svg.select("#x-axis")
            .transition()
            .duration(100)
            .call(d3.axisBottom(xScale));

        // Filter the data based on selected date range
        filteredData = filteredData.filter(d => check_in_range(removeTime(new Date(d.date)), dateExtent));

        // Update the Y-axis domain
        const caseExtent = d3.extent(filteredData, d => +d.total_cases);
        yScale.domain(caseExtent);
        svg.select("#y-axis")
            .transition()
            .duration(100)
            .call(d3.axisLeft(yScale));

        // Remove any existing lines
        svg.selectAll(".line").remove();
        svg.selectAll("#country_label").remove();

        // Add lines for selected countries
        svg.selectAll(".line")
            .data(selectedCountries)
            .join("path")
            .attr("class", "line")
            .attr("stroke-width", 1.5)
            .attr("d", country => {
                return d3.line()
                .x(d => xScale(removeTime(new Date(d.date))))
                .y(d => yScale(d.total_cases))
                (filteredData.filter(d => d.location == country));
            })
            .attr("stroke", (d, i) => cScale(d))
            .attr("fill","none");

        // Add label for lines
        svg.selectAll(".text")     
            .data(selectedCountries.filter(d => filteredData.filter(covid => covid.location == d).length > 0))
            .enter()
            .append("text")
            .attr("id", "country_label")
            .attr("font-family", "sans-serif")
            .attr("font-size", 12)
            .attr("class","label")
            .attr("x", country => {
                let arr = filteredData.filter(d => d.location == country) ;
                return xScale(removeTime(new Date(arr[arr.length - 1].date)));
            })
            .attr("y", country => {
                let arr = filteredData.filter(d => d.location == country) ;
                return yScale(arr[arr.length - 1].total_cases);
            })
            .attr("fill", (d, i) => cScale(d))
            .attr("dy", ".75em")
            .attr("dx", ".75em")
            .text(d => d); 

    }

    // Initial state
    updateCharts();

    // Listen for checkbox changes
    document.getElementById("country_picker").addEventListener("change", updateCharts);

    // Listen for date changes
    document.getElementById("date_picker").addEventListener("change", updateCharts);
}