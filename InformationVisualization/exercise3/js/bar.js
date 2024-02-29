function drawBarChart(data){
    const margin = {top: 5, right: 30, bottom: 50, left: 150};
    let width = document.getElementById("graph_area").offsetWidth - margin.left - margin.right;
    let height = 600 - margin.top - margin.bottom;

    const categories = ["percent_fully", "percent_partly"]

    // Reset the chart
    d3.select("#chart").select("svg").remove()

    // Define the position of the chart 
    const svg = d3.select("#chart")
                .append("svg")
                .attr('width', width + margin.left + margin.right)
                .attr('height', height + margin.top + margin.bottom)
                .append("g")
                .attr("transform", `translate(${margin.left},${margin.top})`);

    // Create a scale for x-axis 
    const xScale = d3.scaleLinear()
        .range([0, width])
        .nice();
    
    // Create a scale for y-axis
    const yScale = d3.scaleBand()
        .range([0, height])
        .padding(0.2);

    // Define the position of each axis
    const xAxis = d3.axisBottom(xScale).tickFormat(d => d * 100);
    const yAxis = d3.axisLeft(yScale);

    // Define a scale for color 
    const cScale = d3.scaleOrdinal()
        .range(['#7bccc4','#2b8cbe'])
        .domain(categories)

    // Draw the x-axis
    svg.append("g")
        .attr('class', 'x-axis')
        .attr('id', 'x-axis')
        .attr('transform', `translate(0, ${height})`)
        .call(xAxis);

    // Draw the y-axis
    svg.append("g")
        .attr('class', 'y-axis')
        .attr('id', 'y-axis')
        .call(yAxis)

    // Indicate the x-axis label 
    svg.append("text")
    .attr("text-anchor", "end")
    .attr("x", width)
    .attr("y", height + 40)
    .attr("font-family", "sans-serif")
    .attr("font-size", 18)
    .text("Share of people (%)");

    // Legend    
    const legend = d3.select("#legend")
            .append("svg")
            .attr('width', width)
            .attr('height', 70)
                .append("g")
                .attr("transform", `translate(${margin.left},${margin.top})`);

    legend.append("rect").attr('x', 0).attr('y', 18).attr('width', 12).attr('height', 12).style("fill", "#7bccc4")
    legend.append("rect").attr('x', 0).attr('y', 36).attr('width', 12).attr('height', 12).style("fill", "#2b8cbe")
    legend.append("text").attr("x", 18).attr("y", 18).text("The rate of fully vaccinated people").style("font-size", "15px").attr('text-anchor', 'start').attr('alignment-baseline', 'hanging');
    legend.append("text").attr("x", 18).attr("y", 36).text("The rate of partially vaccinated people").style("font-size", "15px").attr('text-anchor', 'start').attr('alignment-baseline', 'hanging');    


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

        // Update the X-axis domain
        xScale.domain([0, d3.max(filteredData, d=>d.total_percent)])
        svg.select("#x-axis")
           .transition()
           .duration(100)
           .call(d3.axisBottom(xScale).tickFormat(d=>d*100));

        // Update the Y-axis domain
        yScale.domain(filteredData.map(d => d.location))
        svg.select("#y-axis")
            .transition()
            .duration(100)
            .call(d3.axisLeft(yScale));

        // Generate the data for a stacked bar chart
        const stackedData = d3.stack().keys(categories)(filteredData)

        // Remove any existing bars
        svg.selectAll("#bars").remove();
        svg.selectAll("#bars-label").remove();
        
        // Draw the bars
        svg.append("g")
            .selectAll("g")
            .data(stackedData)
            .join("g")
                .attr("fill", d => cScale(d.key))
            .selectAll("rect")
                .data(d => d)
                .join("rect")
                .attr("id", "bars")
                    .attr("y", d => yScale(d.data.location))
                    .attr("x", d => xScale(d[0]))
                    .attr("width", d => xScale(d[1]) - xScale(d[0]))
                    .attr("height",yScale.bandwidth())
        
        // Draw the labels for bars
        svg.append("g")
                .attr("fill", "black")
                .attr("text-anchor", "end")
                .attr("font-family", "sans-serif")
                .attr("font-size", 10)
            .selectAll("g")
            .data(stackedData)
            .join("g")
            .selectAll("text")
            .data(d=>d)
            .join("text")
                .attr("id", "bars-label")
                .attr("x", d => xScale(d[1]))
                .attr("y", d => yScale(d.data.location) + yScale.bandwidth() / 2)
                .attr("dy", "0.35em")
                .attr("dx", d => (d[0] == d.data.percent_fully)? +20 : -4)
                .text(d => d3.format(".0%")(d[1] - d[0]))
    }

    // Initial state
    updateCharts();

    // Listen for checkbox changes
    document.getElementById("country_picker").addEventListener("change", updateCharts);
}