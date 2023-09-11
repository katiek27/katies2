---
toc: True
comments: True
layout: post
title: HTML and Jquery Tables
description: Me tinkering with my table!
courses: {'compsci': {'week': 3}}
type: hacks
---

```python
%%html
<html>
    <head>
        <style>
            /* Change the background color of the table */
            .table {
                background-color: #F0FFFF;
            }
    
            /* Change the border color of the table */
            .table, .table th, .table td {
                border: 2px #F0F8FF;
            }
    
            /* Change the text color of the table header (th) */
            .table th {
                background-color: #6495ED;
                color: #FFFAF0;
            }

            .table {
    font-family: Courier /* Change to your preferred font */
}
            </style>
            <body>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Food</th>
                            <th>Type of Cuisine</th>
                            <th>Rank 1-10</th>
                            <th>Sweet or Savory?</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Pizza</td>
                            <td>Italian</td>
                            <td>6</td>
                            <td>Savory</td>
                            <td>$19.50</td>
                        </tr>
                        <tr>
                            <td>Sushi</td>
                            <td>Japanese</td>
                            <td>7</td>
                            <td>Combination</td>
                            <td>$12.00</td>
                        </tr>
                        <tr>
                            <td>Salmon</td>
                            <td>Everywhere</td>
                            <td>9</td>
                            <td>Savory</td>
                            <td>$20.00</td>
                        </tr>
                        <tr>
                            <td>Sandwich</td>
                            <td>Somewhere in Europe</td>
                            <td>8</td>
                            <td>Simple</td>
                            <td>$12.95</td>
                        </tr>
                        <tr>
                            <td>Burgers</td>
                            <td>German</td>
                            <td>8</td>
                            <td>Savory</td>
                            <td>$13.00</td>
                        </tr>
                        <tr>
                            <td>Ice Cream</td>
                            <td>Chinese</td>
                            <td>9</td>
                            <td>Sweet</td>
                            <td>$5.52</td>
                        </tr>
                        <tr>
                            <td>Pasta</td>
                            <td>Italian</td>
                            <td>10</td>
                            <td>Depends</td>
                            <td>$16.00</td>
                        </tr>
                        <tr>
                            <td>Cookies</td>
                            <td>Persian</td>
                            <td>8</td>
                            <td>Sweet</td>
                            <td>$2.00</td>
                        </tr>
                    </tbody>
                </table>
            </body> 
    </head>
</html>


```


<html>
    <head>
        <style>
            /* Change the background color of the table */
            .table {
                background-color: #F0FFFF;
            }

            /* Change the border color of the table */
            .table, .table th, .table td {
                border: 2px #F0F8FF;
            }

            /* Change the text color of the table header (th) */
            .table th {
                background-color: #6495ED;
                color: #FFFAF0;
            }

            .table {
    font-family: Courier /* Change to your preferred font */
}
            </style>
            <body>
                <table class="table">
                    <thead>
                        <tr>
                            <th>Food</th>
                            <th>Type of Cuisine</th>
                            <th>Rank 1-10</th>
                            <th>Sweet or Savory?</th>
                            <th>Price</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Pizza</td>
                            <td>Italian</td>
                            <td>6</td>
                            <td>Savory</td>
                            <td>$19.50</td>
                        </tr>
                        <tr>
                            <td>Sushi</td>
                            <td>Japanese</td>
                            <td>7</td>
                            <td>Combination</td>
                            <td>$12.00</td>
                        </tr>
                        <tr>
                            <td>Salmon</td>
                            <td>Everywhere</td>
                            <td>9</td>
                            <td>Savory</td>
                            <td>$20.00</td>
                        </tr>
                        <tr>
                            <td>Sandwich</td>
                            <td>Somewhere in Europe</td>
                            <td>8</td>
                            <td>Simple</td>
                            <td>$12.95</td>
                        </tr>
                        <tr>
                            <td>Burgers</td>
                            <td>German</td>
                            <td>8</td>
                            <td>Savory</td>
                            <td>$13.00</td>
                        </tr>
                        <tr>
                            <td>Ice Cream</td>
                            <td>Chinese</td>
                            <td>9</td>
                            <td>Sweet</td>
                            <td>$5.52</td>
                        </tr>
                        <tr>
                            <td>Pasta</td>
                            <td>Italian</td>
                            <td>10</td>
                            <td>Depends</td>
                            <td>$16.00</td>
                        </tr>
                        <tr>
                            <td>Cookies</td>
                            <td>Persian</td>
                            <td>8</td>
                            <td>Sweet</td>
                            <td>$2.00</td>
                        </tr>
                    </tbody>
                </table>
            </body> 
    </head>
</html>




# This is a modified HTML Table! #
Benefits of a table include: 
- Organizes data into clear, concise points
- Relays information quickly and easily
- Best for spreadsheet data
- Easily manipulated and flexible
Observe the HTML table of my favorite foods above.

# Observe the Java table #
Using a JavaScript table can allow your table to become more interactive, whether it's reorganizing the order of the table, or manipulating buttons to move to the next slide. 
Added perks
- Interactive! You can choose which side to pick and rearrange the table
- Uses multiple languages
- Secure!
Observe the Java table with all of my favorite drinks listed below.


```python
%%html

<!-- Head contains information to Support the Document -->
<head>
    <!-- load jQuery and DataTables output style and scripts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>var define = null;</script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
</head>

<!-- Body contains the contents of the Document -->
<body>
    <table id="demo" class="table">
        <thead>
            <tr>
                <th>Drinks</th>
                <th>Origin</th>
                <th>1-10</th>
                <th>Flavor</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Arizona Tea</td>
                <td>New York</td>
                <td>9</td>
                <td>Fruity</td>
                <td>$0.99</td>
            </tr>
            <tr>
                <td>Lattes</td>
                <td>Italy</td>
                <td>7</td>
                <td>Sweet</td>
                <td>$5.25</td>
            </tr>
            <tr>
                <td>Celsius</td>
                <td>Florida</td>
                <td>8</td>
                <td>Fruity/Artificial</td>
                <td>$3.00</td>
            </tr>
            <tr>
                <td>Caprisun</td>
                <td>Germany/Switzerland</td>
                <td>7</td>
                <td>Nostalgic</td>
                <td>$8.79</td>
            </tr>
            <tr>
                <td>Barley Tea</td>
                <td>Japan</td>
                <td>10</td>
                <td>Herbal/Refreshing</td>
                <td>$2.39</td>
            </tr>
            <tr>
                <td>Apple juice</td>
                <td>Asia</td>
                <td>8</td>
                <td>Fruity</td>
                <td>$5.74</td>
            </tr>
            <tr>
                <td>Jamba Juice</td>
                <td>California</td>
                <td>9</td>
                <td>Fruity</td>
                <td>$7.49</td>
            </tr>
            <tr>
                <td>OJ</td>
                <td>Florida</td>
                <td>6</td>
                <td>Orange</td>
                <td>$1.79</td>
            </tr>
            <tr>
                <td>Milkshake</td>
                <td>Chicago</td>
                <td>7</td>
                <td>Creamy/Sweet</td>
                <td>$5.45</td>
            </tr>
            <tr>
                <td>Gatorade</td>
                <td>Florida</td>
                <td>9</td>
                <td>Refreshing</td>
                <td>$11.69</td>
            </tr>
            <tr>
                <td>Sprite</td>
                <td>Germany</td>
                <td>8</td>
                <td>Sparkly</td>
                <td>$17.38</td>
            </tr>
        </tbody>
    </table>
</body>

<!-- Script is used to embed executable code -->
<script>
    $("#demo").DataTable();
</script>
```



<!-- Head contains information to Support the Document -->
<head>
    <!-- load jQuery and DataTables output style and scripts -->
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.4/css/jquery.dataTables.min.css">
    <script type="text/javascript" language="javascript" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>var define = null;</script>
    <script type="text/javascript" language="javascript" src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
</head>

<!-- Body contains the contents of the Document -->
<body>
    <table id="demo" class="table">
        <thead>
            <tr>
                <th>Drinks</th>
                <th>Origin</th>
                <th>1-10</th>
                <th>Flavor</th>
                <th>Price</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Arizona Tea</td>
                <td>New York</td>
                <td>9</td>
                <td>Fruity</td>
                <td>$0.99</td>
            </tr>
            <tr>
                <td>Lattes</td>
                <td>Italy</td>
                <td>7</td>
                <td>Sweet</td>
                <td>$5.25</td>
            </tr>
            <tr>
                <td>Celsius</td>
                <td>Florida</td>
                <td>8</td>
                <td>Fruity/Artificial</td>
                <td>$3.00</td>
            </tr>
            <tr>
                <td>Caprisun</td>
                <td>Germany/Switzerland</td>
                <td>7</td>
                <td>Nostalgic</td>
                <td>$8.79</td>
            </tr>
            <tr>
                <td>Barley Tea</td>
                <td>Japan</td>
                <td>10</td>
                <td>Herbal/Refreshing</td>
                <td>$2.39</td>
            </tr>
            <tr>
                <td>Apple juice</td>
                <td>Asia</td>
                <td>8</td>
                <td>Fruity</td>
                <td>$5.74</td>
            </tr>
            <tr>
                <td>Jamba Juice</td>
                <td>California</td>
                <td>9</td>
                <td>Fruity</td>
                <td>$7.49</td>
            </tr>
            <tr>
                <td>OJ</td>
                <td>Florida</td>
                <td>6</td>
                <td>Orange</td>
                <td>$1.79</td>
            </tr>
            <tr>
                <td>Milkshake</td>
                <td>Chicago</td>
                <td>7</td>
                <td>Creamy/Sweet</td>
                <td>$5.45</td>
            </tr>
            <tr>
                <td>Gatorade</td>
                <td>Florida</td>
                <td>9</td>
                <td>Refreshing</td>
                <td>$11.69</td>
            </tr>
            <tr>
                <td>Sprite</td>
                <td>Germany</td>
                <td>8</td>
                <td>Sparkly</td>
                <td>$17.38</td>
            </tr>
        </tbody>
    </table>
</body>

<!-- Script is used to embed executable code -->
<script>
    $("#demo").DataTable();
</script>


