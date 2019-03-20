const navSlide = () => {
    const burger = document.querySelector ('.burger');
    const nav = document.querySelector ('.nav-links');
    const navLinks = document.querySelectorAll ('.nav-links li');
    const header = document.querySelector ('.header');


    burger.addEventListener('click', () =>{

        nav.classList.toggle('nav-active');

        navLinks.forEach((link,index) => {
            
             link.style.animation = `navLinkFade 0.5s ease forward ${index / 7 + 1.5}s` ;   
            
        });

        burger.classList.toggle('toggle');


    });

    
    
}

navSlide();

var modal = document.getElementById('id01');

window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }


function display_c(){
    var refresh=1000; // Refresh rate in milli seconds
    mytime=setTimeout('display_ct()',refresh)
    }
    
    function display_ct() {
    var x = new Date()
    document.getElementById('ct').innerHTML = x;
    display_c();
     }

function display_ct() {
    var x = new Date()
    var x1=x.toUTCString();// changing the display to UTC string
    document.getElementById('ct').innerHTML = x1;
    tt=display_c();
     }



     var gaugeOptions = {

        chart: {
          type: 'solidgauge'
        },
      
        title: null,
      
        pane: {
          center: ['50%', '85%'],
          size: '140%',
          startAngle: -90,
          endAngle: 90,
          background: {
            backgroundColor: (Highcharts.theme && Highcharts.theme.background2) || '#EEE',
            innerRadius: '60%',
            outerRadius: '100%',
            shape: 'arc'
          }
        },
      
        tooltip: {
          enabled: false
        },
      
        // the value axis
        yAxis: {
          stops: [
            [0.1, '#55BF3B'], // green
            [0.5, '#DDDF0D'], // yellow
            [0.9, '#DF5353'] // red
          ],
          lineWidth: 0,
          minorTickInterval: null,
          tickAmount: 2,
          title: {
            y: -70
          },
          labels: {
            y: 16
          }
        },
      
        plotOptions: {
          solidgauge: {
            dataLabels: {
              y: 5,
              borderWidth: 0,
              useHTML: true
            }
          }
        }
      };
      
      // The speed gauge
      var chartSpeed = Highcharts.chart('container-speed', Highcharts.merge(gaugeOptions, {
        yAxis: {
          min: 0,
          max: 100,
          
        },
      
        credits: {
          enabled: false
        },
      
        series: [{
          name: 'Speed',
          data: [80],
          dataLabels: {
            format: '<div style="text-align:center"><span style="font-size:25px;color:' +
              ((Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black') + '">{y}</span><br/>' +
                 '<span style="font-size:12px;color:silver">km/h</span></div>'
          },
          tooltip: {
            valueSuffix: ' km/h'
          }
        }]
      
      }));
      
      
      // Bring life to the dials
      setInterval(function () {
        // Speed
        var point,
          newVal,
          inc;
      
        if (chartSpeed) {
          point = chartSpeed.series[0].points[0];
          inc = Math.round((Math.random() - 0.5) * 100);
          newVal = point.y + inc;
      
          if (newVal < 0 || newVal > 200) {
            newVal = point.y - inc;
          }
      
          point.update(newVal);
        }
      
        
      }, 2000);
      
      
      