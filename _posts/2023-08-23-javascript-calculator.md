---
toc: true
comments: true
layout: post
title: calculator not grade
description: it do the calc but not da grade
type: hacks
courses: { compsci: {week: 4} }
---
<!--
Hack 0: Right justify result
Hack 1: Test conditions on small, big, and decimal numbers, report on findings. Fix issues.
Hack 2: Add the common math operation that is missing from calculator
Hack 3: Implement 1 number operation (ie SQRT)
-->
<!--
HTML implementation of the calculator.
-->
<!--
    Style and Action are aligned with HRML class definitions
    style.css contains majority of style definition (number, operation, clear, and equals)
    - The div calculator-container sets 4 elements to a row
    Background is credited to Vanta JS and is implemented at bottom of this page
-->
<style>
    .wrapper{
        backdrop-filter: blur(5.5px);
        background: rgba(255, 255, 255, 0.75);
        border: 1px dashed Azure;
        border-radius: 16px;
    }
  .calculator-output {
    /* calulator output
      top bar shows the results of the calculator;
      result to take up the entirety of the first row;
      span defines 4 columns and 1 row
    */
    grid-column: span 4;
    grid-row: span 1;
    background: rgba(255. 255. 255. 0.75);
    border: 5px solid rgba(255, 255, 255, 0.01);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    font-size: 35px;
    padding: 0.23em;
    display: flex;
    align-items: center;
  }
.calculator-number {
    backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    -webkit-backdrop-filter: blur(5.5px);
    border: 1px solid rgba(255, 255, 255, 0.01);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    color: #B0E0E6;
    width: 10%;
    flex-basis: 25%;
    font-family: inherit;
    height: 65px;
    font-size: 25px;
    margin: 5px;
}
 .calculator-operation{
    backdrop-filter: blur(5.5px);
    -webkit-backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(255, 255, 255, 0.01);
    border-radius: 15px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    color: #fff;
    background: #B0E0E6;
    font-size: 20px;
    width: 10%;
    flex-basis: 25%;
    height: 65px;
 }
 .calculator-equals{
    backdrop-filter: blur(5.5px);
    -webkit-backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    border: 1px solid rgba(255, 255, 255, 0.01);
    border-radius: 15px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    color: #fff;
    background: PowderBlue;
    font-size: 20px;
    width: 22%;
    flex-basis: 25%;
    height: 65px;
 }
.container {
    display: flex;
    align-items: center;
}
 .calculator-operation:hover{
     background-color: inherit;
     color: inherit;
 }
 .calculator-number:hover{
     background-color: lightblue;
     color: inherit;
 }
.calculator-number:active{
     background-color: lavender;
}
 .calculator-clear:hover{
     background-color: inherit;
     color: inherit;
 }
 .calculator-clear{
    backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    -webkit-backdrop-filter: blur(5.5px);
    border: 1px solid rgba(255, 255, 255, 0.01);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    color: #232323;
    flex-basis: 40%;
    font-family: inherit;
    height: 65px;
    font-size: 20px;
    width: 24.2%
 }
 .calculator-back{
    backdrop-filter: blur(5.5px);
    background: rgba(255, 255, 255, 0.75);
    -webkit-backdrop-filter: blur(5.5px);
    border: 1px solid rgba(255, 255, 255, 0.01);
    border-radius: 16px;
    box-shadow: 0 4px 30px rgba(35, 35, 35, 0.1);
    color: #232323;
    flex-basis: 20%;
    font-family: inherit;
    height: 65px;
    font-size: 20px;
 }
</style>
<!-- Add a container for the animation -->
<body>
<div id="animation">
<div class="container">
    <section class="calc-butt">
        <div class="wrapper">
        <!--result-->
            <div class="calculator-output" id="output">0</div>
                <div class="butt-row">
                    <button class="calculator-clear">C</button>
                    <button class="calculator-operation calculator-back">←</button>
                    <button class="calculator-operation">+</button>
                </div>
                <div class="butt-row">
                    <button class="calculator-number">7</button>
                    <button class="calculator-number">8</button>
                    <button class="calculator-number">9</button>
                    <button class="calculator-operation">/</button>
                </div>
                <div class="butt-row">
                    <button class="calculator-number">4</button>
                    <button class="calculator-number">5</button>
                    <button class="calculator-number">6</button>
                    <button class="calculator-operation">*</button>
                </div>
                <div class="butt-row">
                    <button class="calculator-number">1</button>
                    <button class="calculator-number">2</button>
                    <button class="calculator-number">3</button>
                    <button class="calculator-operation">-</button>
                </div>
                <div class="butt-row">
                    <button class="calculator-number">0</button>
                    <button class="calculator-number">.</button>
                    <button class="calculator-equals">=</button>
                </div>
            </div>
        </div>
    </section>
</div>
</body>
<!-- JavaScript (JS) implementation of the calculator. -->
<script>
// initialize important variables to manage calculations
var firstNumber = null;
var operator = null;
var nextReady = true;
// build objects containing key elements
const output = document.getElementById("output");
const numbers = document.querySelectorAll(".calculator-number");
const operations = document.querySelectorAll(".calculator-operation");
const clear = document.querySelectorAll(".calculator-clear");
const equals = document.querySelectorAll(".calculator-equals");
const back = document.querySelectorAll(".calculator-back");
// Number buttons listener
numbers.forEach(button => {
  button.addEventListener("click", function() {
    number(button.textContent);
  });
});
// Number action
function number (value) { // function to input numbers into the calculator
    if (value != ".") {
        if (nextReady == true) { // nextReady is used to tell the computer when the user is going to input a completely new number
            output.innerHTML = value;
            if (value != "0") { // if statement to ensure that there are no multiple leading zeroes
                nextReady = false;
            }
        } else {
            output.innerHTML = output.innerHTML + value; // concatenation is used to add the numbers to the end of the input
        }
    } else { // special case for adding a decimal; can't have two decimals
        if (output.innerHTML.indexOf(".") == -1) {
            output.innerHTML = output.innerHTML + value;
            nextReady = false;
        }
    }
}
// Operation buttons listener
operations.forEach(button => {
  button.addEventListener("click", function() {
    operation(button.textContent);
  });
});
// Operator action
function operation (choice) { // function to input operations into the calculator
    if (firstNumber == null) { // once the operation is chosen, the displayed number is stored into the variable firstNumber
        firstNumber = parseInt(output.innerHTML);
        nextReady = true;
        operator = choice;
        return; // exits function
    }
    // occurs if there is already a number stored in the calculator
    firstNumber = calculate(firstNumber, parseFloat(output.innerHTML));
    operator = choice;
    output.innerHTML = firstNumber.toString();
    nextReady = true;
}
// Calculator
function calculate (first, second) { // function to calculate the result of the equation
    let result = 0;
    switch (operator) {
        case "+":
            result = first + second;
            break;
        case "-":
            result = first - second;
            break;
        case "*":
            result = first * second;
            break;
        case "/":
            result = first / second;
            break;
        default:
            break;
        case "←":
            if(buffer.length ===1){
                buffer = '0';
            }else{
                buffer = buffer.substring(0, buffer.length - 1);
            }
            break;
        }
    return result;
}
// Equals button listener
equals.forEach(button => {
  button.addEventListener("click", function() {
    equal();
  });
});
// Equal action
function equal () { // function used when the equals button is clicked; calculates equation and displays it
    firstNumber = calculate(firstNumber, parseFloat(output.innerHTML));
    output.innerHTML = firstNumber.toString();
    nextReady = true;
}
// Clear button listener
clear.forEach(button => {
  button.addEventListener("click", function() {
    clearCalc();
  });
});
// A/C action
function clearCalc () { // clears calculator
    firstNumber = null;
    output.innerHTML = "0";
    nextReady = true;
}
// back action
back.forEach(button => {
  button.addEventListener("click", function() {
    // Call the backspace function
    backspace();
  });
});
function backspace() {
  let currentOutput = output.innerHTML;
  if (currentOutput.length === 1) {
    output.innerHTML = "0";
  } else {
    output.innerHTML = currentOutput.slice(0, -1);
  }
}
</script>
<!--
Vanta animations just for fun, load JS onto the page
-->
<script src="/teacher/assets/js/three.r119.min.js"></script>
<script src="/teacher/assets/js/vanta.halo.min.js"></script>
<script src="/teacher/assets/js/vanta.birds.min.js"></script>
<script src="/teacher/assets/js/vanta.net.min.js"></script>
<script src="/teacher/assets/js/vanta.rings.min.js"></script>
<script>
// setup vanta scripts as functions
var vantaInstances = {
  halo: VANTA.HALO,
  birds: VANTA.BIRDS,
  net: VANTA.NET,
  rings: VANTA.RINGS
};
// obtain a random vanta function
var vantaInstance = vantaInstances[Object.keys(vantaInstances)[Math.floor(Math.random() * Object.keys(vantaInstances).length)]];
// run the animation
vantaInstance({
  el: "#animation",
  mouseControls: true,
  touchControls: true,
  gyroControls: false
});
</script>