var chart;

function draw(weights) {
  var options = {
    chart: {
      renderTo: "container",
    },
    title: { text: "My Weight" },
    xAxis: {
      title: { text: "期間" },
      // type: "datetime"
      // categories: [2015, 2016]
    },
    yAxis: {
      title: { text: "体重" },
      allowDecimals: false,
      max: 70,
      min: 60
    },
    series: [{
      name: "onigra",
      turboThreshold: 0,
      data: weights
    }]
  }

  chart = new Highcharts.Chart(options);
}

fetch("/weights.json")
  .then(function(response) { return response.json(); })
  .then(function(json) {
    var data = [];
    json.forEach(function(val) {
      data.push({ y: parseFloat(val.weight), name: val.created_at });
    })
    document.body.ondataload = draw(data);
})
