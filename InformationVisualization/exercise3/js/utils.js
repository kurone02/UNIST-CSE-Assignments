let updateCharts = () => {};

function createCheckBoxList(uniqueCountryNames) {
    n = uniqueCountryNames.length
    for(let i = 0; i < n; i++) {
        country_name = uniqueCountryNames[i][0];
        radio = document.createElement("label");
        line_break = document.createElement("br");
        radio.innerHTML = `
            <input type="checkbox" name="countries" value="${country_name}"> ${country_name}
        `;
        document.getElementById("country_picker").childNodes[1].append(radio);
        document.getElementById("country_picker").childNodes[1].append(line_break);
    }
}

function removeTime(date) {
    return new Date(
      date.getFullYear(),
      date.getMonth(),
      date.getDate()
    );
}

function check_in_range(x, extent) {
    return extent[0] <= x && x <= extent[1];
}