import { Timer } from "easytimer.js";

const timer = () => {
  const timer = new Timer();
  const startButton = document.querySelector("#start");
  const stopButton = document.querySelector("#stop");
  timer.addEventListener('secondsUpdated', function (e) {
      $('#basicUsage').html(timer.getTimeValues().toString());
  });
  startButton.addEventListener('click', () => {
    timer.start();
  });
  stopButton.addEventListener('click', () => {
    timer.pause();
    const inputBreastTimer = document.querySelector('#breast_feeding_duration_minutes');
    inputBreastTimer.value = timer.getTotalTimeValues().seconds;
  });

};


export {timer};
