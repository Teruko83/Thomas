import Chart from "chart.js";

let myChart = document.getElementById('mybreastchart').getContext('2d');
let chartTest = JSON.parse(document.getElementById('mybreastchart').dataset.breastfeedingweek);

// Global Options
Chart.defaults.global.defaultFontFamily = 'Lato';
Chart.defaults.global.defaultFontSize = 18;
Chart.defaults.global.defaultFontColor = '#777';

// let ConsumptionChart = new Chart(myChart, {
//   type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
//   data:{
//     datasets:[{
//       label:'Last seven days',
//       data: chartTest,
//       backgroundColor:'#0F0D25',
//       borderWidth:1,
//       borderColor:'#777',
//       hoverBorderWidth:3,
//       hoverBorderColor:'#000'
//     }]
//   },
//   options: {
//     scales: {
//         xAxes: [{
//             type: 'time',
//             distribution: 'series',
//             time: {
//                 unit: 'day'
//             }
//         }]
//     }
// }
// });
document.getElementById("last7").addEventListener("click", getLastSevenConsumption);
const getLastSevenConsumption = () => {
  // Parse data from rails view
  const rawDataset = JSON.parse(document.getElementById('mybreastchart').dataset.breastfeedingweek);
  console.log('raw dataset', rawDataset)
  const finalData = [];
  rawDataset.forEach(record => {
    const xValue = record.start_date;
    const yValue = record.duration_minutes;
    const feeding = { x: xValue, y: yValue };
    finalData.push(feeding);
  })

  let ConsumptionChart = new Chart(myChart, {
      type:'line', // options: bar, horizontalBar, pie, line, doughnut, radar, polarArea
      data:{
        datasets:[{
          label:'Last seven days',
          data: finalData,
          backgroundColor:'#0F0D25',
          borderWidth:1,
          borderColor:'#777',
          hoverBorderWidth:3,
          hoverBorderColor:'#000'
        }]
      },
      options: {
        scales: {
            xAxes: [{
                type: 'time',
                distribution: 'series',
                time: {
                    unit: 'day'
                }
            }]
        }
    }
    });
};

const initBreastChart = () => {
  getLastSevenConsumption();
}

initBreastChart();
