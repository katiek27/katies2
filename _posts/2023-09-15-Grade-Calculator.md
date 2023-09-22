---
toc: false
comments: false
layout: post
title: Grade Calculator
description: Grade Calculator New and Improved :)
type: hacks
courses: { compsci: {week: 4} }
---

<html>
<head>
    <title>Score Calculator</title>
   <style>
        body {
            font-family: Arial; /* Define your desired font here for the entire body */
        }

        .header {
            font-family: Courier; /* Define a different font for the header */
        }
        h3{
            text-align: center
        }
    </style>
</head>
<body>
    <!-- Maximum and Minimum Values -->
    <div>
        <strong>Maximum:</strong> <span id="maximum">0.0</span><br>
        <strong>Minimum:</strong> <span id="minimum">0.0</span><br>
    </div>

    <!-- Help Message -->
    <div class="header">
    <h3>Input scores, press tab to add new number.</h3>
    </div>
    <!-- Totals -->
    <ul>
        <li>
            Total : <span id="total">0.0</span>
            Count : <span id="count">0.0</span>
            Average : <span id="average">0.0</span>
        </li>
    </ul>
    <!-- Rows added using scores ID -->
    <div id="scores">
        <!-- javascript generated inputs -->
    </div>
    <!-- Reset Button -->
    <button id="resetButton">Reset</button>
    <script>
        var max = -Infinity; // Initialize max to negative infinity
        var min = Infinity;  // Initialize min to positive infinity

        // Executes on input event and calculates totals
        function calculator(event) {
            var key = event.key;
            // Check if the pressed key is the "Tab" key (key code 9) or "Enter" key (key code 13)
            if (key === "Tab" || key === "Enter") {
                event.preventDefault(); // Prevent default behavior (tabbing to the next element)
                var array = document.getElementsByName('score'); // setup array of scores
                var total = 0;  // running total
                var count = 0;  // count of input elements with valid values

                for (var i = 0; i < array.length; i++) {  // iterate through array
                    var value = array[i].value;
                    if (parseFloat(value)) {
                        var parsedValue = parseFloat(value);
                        total += parsedValue;  // add to running total
                        count++;

                        // Update max and min values
                        if (parsedValue > max) {
                            max = parsedValue;
                        }
                        if (parsedValue < min) {
                            min = parsedValue;
                        }
                    }
                }
                // Update maximum and minimum values
                document.getElementById('maximum').innerHTML = max.toFixed(2);
                document.getElementById('minimum').innerHTML = min.toFixed(2);

                // Update totals
                document.getElementById('total').innerHTML = total.toFixed(2); // show two decimals
                document.getElementById('count').innerHTML = count;
                if (count > 0) {
                    document.getElementById('average').innerHTML = (total / count).toFixed(2);
                } else {
                    document.getElementById('average').innerHTML = "0.0";
                }
                // adds newInputLine, only if all array values satisfy parseFloat
                if (count === document.getElementsByName('score').length) {
                    newInputLine(count); // make a new input line
                }
            }
        }
        // Creates a new input box
        function newInputLine(index) {
            // Add a label for each score element
            var title = document.createElement('label');
            title.htmlFor = index;
            title.innerHTML = index + ". ";
            document.getElementById("scores").appendChild(title); // add to HTML
            // Setup score element and attributes
            var score = document.createElement("input"); // input element
            score.id = index;  // id of input element
            score.onkeydown = calculator // Each key triggers event (using function as a value)
            score.type = "number"; // Use text type to allow typing multiple characters
            score.name = "score";  // name is used to group all "score" elements (array)
            score.style.textAlign = "right";
            score.style.width = "5em";
            document.getElementById("scores").appendChild(score);  // add to HTML
            // Create and add blank line after input box
            var br = document.createElement("br");  // line break element
            document.getElementById("scores").appendChild(br); // add to HTML
            // Set focus on the new input line
            document.getElementById(index).focus();
        }
        // Reset function
        function reset() {
            var array = document.getElementsByName('score');
            // Reset input values
            for (var i = 0; i < array.length; i++) {
                array[i].value = '';
            }
            // Reset totals
            document.getElementById('total').innerHTML = '0.0';
            document.getElementById('count').innerHTML = '0.0';
            document.getElementById('average').innerHTML = '0.0';

            // Remove existing input lines
            var scoresDiv = document.getElementById('scores');
            while (scoresDiv.firstChild) {
                scoresDiv.removeChild(scoresDiv.firstChild);
            }

            // Reset maximum and minimum values
            max = -Infinity;
            min = Infinity;
            document.getElementById('maximum').innerHTML = '0.0';
            document.getElementById('minimum').innerHTML = '0.0';

            // Recreate the first input line
            newInputLine(0);
        }
        // Add an event listener to the reset button
        document.getElementById('resetButton').addEventListener('click', reset);
        // Creates 1st input box on Window load
        newInputLine(0);
    </script>
</body>
</html>

