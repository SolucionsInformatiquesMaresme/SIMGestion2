<?php
error_reporting(~E_ALL);

/*
Mostra la paleta de color.
*/



function paletaColors() 
{
	echo "<table cellpadding=\"1\" cellspacing=\"1\">";
        echo "<tr>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong></strong></td>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong>Nombre</strong></td>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong>RGB</strong></td>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong></strong></td>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong>Nombre</strong></td>";
          echo "<td style=\"border-bottom: black 2px solid\"><strong>RGB</strong></td>";
        echo "</tr>";
        echo "<tr>";
        echo "<tr><td style=\"background: aliceblue\"; width=\"15px\">&nbsp;</td><td>AliceBlue</td><td>#F0F8FF</td><td style=\"background: lightsalmon\"; width=\"15px\">&nbsp;</td><td>LightSalmon</td><td>#FFA07A</td></tr>";
		echo "<tr><td style=\"background: antiquewhite\">&nbsp;</td><td>AntiqueWhite</td><td>#FAEBD7</td><td style=\"background: lightseagreen\">&nbsp;</td><td>LightSeaGreen</td><td>#20B2AA</td></tr>";
		echo "<tr><td style=\"background: aqua\">&nbsp;</td><td>Aqua</td><td>#00FFFF</td><td style=\"background: lightskyblue\">&nbsp;</td><td>LightSkyBlue</td><td>#87CEFA</td></tr>";
		echo "<tr><td style=\"background: aquamarine\">&nbsp;</td><td>Aquamarine</td><td>#7FFFD4</td><td style=\"background: lightslategray\">&nbsp;</td><td>LightSlateGray</td><td>#778899</td></tr>";
		echo "<tr><td style=\"background: azure\">&nbsp;</td><td>Azure</td><td>#F0FFFF</td><td style=\"background: lightsteelblue\">&nbsp;</td><td>LightSteelBlue</td><td>#B0C4DE</td></tr>";
		echo "<tr><td style=\"background: beige\">&nbsp;</td><td>Beige</td><td>#F5F5DC</td><td style=\"background: lightyellow\">&nbsp;</td><td>LightYellow</td><td>#FFFFE0</td></tr>";
		echo "<tr><td style=\"background: bisque\">&nbsp;</td><td>Bisque</td><td>#FFE4C4</td><td style=\"background: lime\">&nbsp;</td><td>Lime</td><td>#00FF00</td></tr>";
		echo "<tr><td style=\"background: black\">&nbsp;</td><td>Black</td><td>#000000</td><td style=\"background: limegreen\">&nbsp;</td><td>LimeGreen</td><td>#32CD32</td></tr>";
		echo "<tr><td style=\"background: blanchedalmond\">&nbsp;</td><td>BlanchedAlmond</td><td>#FFEBCD</td><td style=\"background: linen\">&nbsp;</td><td>Linen</td><td>#FAF0E6</td></tr>";
		echo "<tr><td style=\"background: blue\">&nbsp;</td><td>Blue</td><td>#0000FF</td><td style=\"background: magenta\">&nbsp;</td><td>Magenta</td><td>#FF00FF</td></tr>";
		echo "<tr><td style=\"background: blueviolet\">&nbsp;</td><td>BlueViolet</td><td>#8A2BE2</td><td style=\"background: maroon\">&nbsp;</td><td>Maroon</td><td>#800000</td></tr>";
		echo "<tr><td style=\"background: brown\">&nbsp;</td><td>Brown</td><td>#A52A2A</td><td style=\"background: mediumaquamarine\">&nbsp;</td><td>MediumAquamarine</td><td>#66CDAA</td></tr>";
		echo "<tr><td style=\"background: burlywood\">&nbsp;</td><td>BurlyWood</td><td>#DEB887</td><td style=\"background: mediumblue\">&nbsp;</td><td>MediumBlue</td><td>#0000CD</td></tr>";
		echo "<tr><td style=\"background: cadetblue\">&nbsp;</td><td>CadetBlue</td><td>#5F9EA0</td><td style=\"background: mediumorchid\">&nbsp;</td><td>MediumOrchid</td><td>#BA55D3</td></tr>";
		echo "<tr><td style=\"background: chartreuse\">&nbsp;</td><td>Chartreuse</td><td>#7FFF00</td><td style=\"background: mediumpurple\">&nbsp;</td><td>MediumPurple</td><td>#9370DB</td></tr>";
		echo "<tr><td style=\"background: chocolate\">&nbsp;</td><td>Chocolate</td><td>#D2691E</td><td style=\"background: mediumseagreen\">&nbsp;</td><td>MediumSeaGreen</td><td>#3CB371</td></tr>";
		echo "<tr><td style=\"background: coral\">&nbsp;</td><td>Coral</td><td>#FF7F50</td><td style=\"background: mediumslateblue\">&nbsp;</td><td>MediumSlateBlue</td><td>#7B68EE</td></tr>";
		echo "<tr><td style=\"background: cornflowerblue\">&nbsp;</td><td>CornflowerBlue</td><td>#6495ED</td><td style=\"background: mediumspringgreen\">&nbsp;</td><td>MediumSpringGreen</td><td>#00FA9A</td></tr>";
		echo "<tr><td style=\"background: cornsilk\">&nbsp;</td><td>Cornsilk</td><td>#FFF8DC</td><td style=\"background: mediumturquoise\">&nbsp;</td><td>MediumTurquoise</td><td>#48D1CC</td></tr>";
		echo "<tr><td style=\"background: crimson\">&nbsp;</td><td>Crimson</td><td>#DC143C</td><td style=\"background: mediumvioletred\">&nbsp;</td><td>MediumVioletRed</td><td>#C71585</td></tr>";
		echo "<tr><td style=\"background: cyan\">&nbsp;</td><td>Cyan</td><td>#00FFFF</td><td style=\"background: midnightblue\">&nbsp;</td><td>MidnightBlue</td><td>#191970</td></tr>";
		echo "<tr><td style=\"background: darkblue\">&nbsp;</td><td>DarkBlue</td><td>#00008B</td><td style=\"background: mintcream\">&nbsp;</td><td>MintCream</td><td>#F5FFFA</td></tr>";
		echo "<tr><td style=\"background: darkcyan\">&nbsp;</td><td>DarkCyan</td><td>#008B8B</td><td style=\"background: mistyrose\">&nbsp;</td><td>MistyRose</td><td>#FFE4E1</td></tr>";
		echo "<tr><td style=\"background: darkgoldenrod\">&nbsp;</td><td>DarkGoldenrod</td><td>#B8860B</td><td style=\"background: moccasin\">&nbsp;</td><td>Moccasin</td><td>#FFE4B5</td></tr>";
		echo "<tr><td style=\"background: darkgray\">&nbsp;</td><td>DarkGray</td><td>#A9A9A9</td><td style=\"background: navajowhite\">&nbsp;</td><td>NavajoWhite</td><td>#FFDEAD</td></tr>";
		echo "<tr><td style=\"background: darkgreen\">&nbsp;</td><td>DarkGreen</td><td>#006400</td><td style=\"background: navy\">&nbsp;</td><td>Navy</td><td>#000080</td></tr>";
		echo "<tr><td style=\"background: darkkhaki\">&nbsp;</td><td>DarkKhaki</td><td>#BDB76B</td><td style=\"background: oldlace\">&nbsp;</td><td>OldLace</td><td>#FDF5E6</td></tr>";
		echo "<tr><td style=\"background: darkmagenta\">&nbsp;</td><td>DarkMagenta</td><td>#8B008B</td><td style=\"background: olive\">&nbsp;</td><td>Olive</td><td>#808000</td></tr>";
		echo "<tr><td style=\"background: darkolivegreen\">&nbsp;</td><td>DarkOliveGreen</td><td>#556B2F</td><td style=\"background: olivedrab">&nbsp;</td><td>OliveDrab</td><td>#6B8E23</td></tr>";
		echo "<tr><td style=\"background: darkorange\">&nbsp;</td><td>DarkOrange</td><td>#FF8C00</td><td style=\"background: orange\">&nbsp;</td><td>Orange</td><td>#FFA500</td></tr>";
		echo "<tr><td style=\"background: darkorchid\">&nbsp;</td><td>DarkOrchid</td><td>#9932CC</td><td style=\"background: orangered\">&nbsp;</td><td>OrangeRed</td><td>#FF4500</td></tr>";
		echo "<tr><td style=\"background: darkred\">&nbsp;</td><td>DarkRed</td><td>#8B0000</td><td style=\"background: orchid\">&nbsp;</td><td>Orchid</td><td>#DA70D6</td></tr>";
		echo "<tr><td style=\"background: darksalmon\">&nbsp;</td><td>DarkSalmon</td><td>#E9967A</td><td style=\"background: palegoldenrod\">&nbsp;</td><td>PaleGoldenrod</td><td>#EEE8AA</td></tr>";
		echo "<tr><td style=\"background: darkseagreen\">&nbsp;</td><td>DarkSeaGreen</td><td>#8FBC8F</td><td style=\"background: palegreen\">&nbsp;</td><td>PaleGreen</td><td>#98FB98</td></tr>";
		echo "<tr><td style=\"background: darkslateblue\">&nbsp;</td><td>DarkSlateBlue</td><td>#483D8B</td><td style=\"background: paleturquoise\">&nbsp;</td><td>PaleTurquoise</td><td>#AFEEEE</td></tr>";
		echo "<tr><td style=\"background: darkslategray\">&nbsp;</td><td>DarkSlateGray</td><td>#2F4F4F</td><td style=\"background: palevioletred\">&nbsp;</td><td>PaleVioletRed</td><td>#DB7093</td></tr>";
		echo "<tr><td style=\"background: darkturquoise\">&nbsp;</td><td>DarkTurquoise</td><td>#00CED1</td><td style=\"background: papayawhip\">&nbsp;</td><td>PapayaWhip</td><td>#FFEFD5</td></tr>";
		echo "<tr><td style=\"background: darkviolet\">&nbsp;</td><td>DarkViolet</td><td>#9400D3</td><td style=\"background: peachpuff\">&nbsp;</td><td>PeachPuff</td><td>#FFDAB9</td></tr>";
		echo "<tr><td style=\"background: deeppink\">&nbsp;</td><td>DeepPink</td><td>#FF1493</td><td style=\"background: peru\">&nbsp;</td><td>Peru</td><td>#CD853F</td></tr>";
		echo "<tr><td style=\"background: deepskyblue\">&nbsp;</td><td>DeepSkyBlue</td><td>#00BFFF</td><td style=\"background: pink\">&nbsp;</td><td>Pink</td><td>#FFC0CB</td></tr>";
		echo "<tr><td style=\"background: dimgray\">&nbsp;</td><td>DimGray</td><td>#696969</td><td style=\"background: plum\">&nbsp;</td><td>Plum</td><td>#DDA0DD</td></tr>";
		echo "<tr><td style=\"background: dodgerblue\">&nbsp;</td><td>DodgerBlue</td><td>#1E90FF</td><td style=\"background: powderblue\">&nbsp;</td><td>PowderBlue</td><td>#B0E0E6</td></tr>";
		echo "<tr><td style=\"background: firebrick\">&nbsp;</td><td>FireBrick</td><td>#B22222</td><td style=\"background: purple\">&nbsp;</td><td>Purple</td><td>#800080</td></tr>";
		echo "<tr><td style=\"background: floralwhite\">&nbsp;</td><td>FloralWhite</td><td>#FFFAF0</td><td style=\"background: red\">&nbsp;</td><td>Red</td><td>#FF0000</td></tr>";
		echo "<tr><td style=\"background: forestgreen\">&nbsp;</td><td>ForestGreen</td><td>#228B22</td><td style=\"background: rosybrown\">&nbsp;</td><td>RosyBrown</td><td>#BC8F8F</td></tr>";
		echo "<tr><td style=\"background: fuchsia\">&nbsp;</td><td>Fuchsia</td><td>#FF00FF</td><td style=\"background: royalblue\">&nbsp;</td><td>RoyalBlue</td><td>#4169E1</td></tr>";
		echo "<tr><td style=\"background: gainsboro\">&nbsp;</td><td>Gainsboro</td><td>#DCDCDC</td><td style=\"background: saddlebrown\">&nbsp;</td><td>SaddleBrown</td><td>#8B4513</td></tr>";
		echo "<tr><td style=\"background: ghostwhite\">&nbsp;</td><td>GhostWhite</td><td>#F8F8FF</td><td style=\"background: salmon\">&nbsp;</td><td>Salmon</td><td>#FA8072</td></tr>";
		echo "<tr><td style=\"background: gold\">&nbsp;</td><td>Gold</td><td>#FFD700</td><td style=\"background: sandybrown\">&nbsp;</td><td>SandyBrown</td><td>#F4A460</td></tr>";
		echo "<tr><td style=\"background: goldenrod\">&nbsp;</td><td>Goldenrod</td><td>#DAA520</td><td style=\"background: seagreen\">&nbsp;</td><td>SeaGreen</td><td>#2E8B57</td></tr>";
		echo "<tr><td style=\"background: gray\">&nbsp;</td><td>Gray</td><td>#808080</td><td style=\"background: seashell\">&nbsp;</td><td>Seashell</td><td>#FFF5EE</td></tr>";
		echo "<tr><td style=\"background: green\">&nbsp;</td><td>Green</td><td>#008000</td><td style=\"background: sienna\">&nbsp;</td><td>Sienna</td><td>#A0522D</td></tr>";
		echo "<tr><td style=\"background: greenyellow\">&nbsp;</td><td>GreenYellow</td><td>#ADFF2F</td><td style=\"background: silver\">&nbsp;</td><td>Silver</td><td>#C0C0C0</td></tr>";
		echo "<tr><td style=\"background: honeydew\">&nbsp;</td><td>Honeydew</td><td>#F0FFF0</td><td style=\"background: skyblue\">&nbsp;</td><td>SkyBlue</td><td>#87CEEB</td></tr>";
		echo "<tr><td style=\"background: hotpink\">&nbsp;</td><td>HotPink</td><td>#FF69B4</td><td style=\"background: slateblue\">&nbsp;</td><td>SlateBlue</td><td>#6A5ACD</td></tr>";
		echo "<tr><td style=\"background: indianred\">&nbsp;</td><td>IndianRed</td><td>#CD5C5C</td><td style=\"background: slategray\">&nbsp;</td><td>SlateGray</td><td>#708090</td></tr>";
		echo "<tr><td style=\"background: indigo\">&nbsp;</td><td>Indigo</td><td>#4B0082</td><td style=\"background: snow\">&nbsp;</td><td>Snow</td><td>#FFFAFA</td></tr>";
		echo "<tr><td style=\"background: ivory\">&nbsp;</td><td>Ivory</td><td>#FFFFF0</td><td style=\"background: springgreen\">&nbsp;</td><td>SpringGreen</td><td>#00FF7F</td></tr>";
		echo "<tr><td style=\"background: khaki\">&nbsp;</td><td>Khaki</td><td>#F0E68C</td><td style=\"background: steelblue\">&nbsp;</td><td>SteelBlue</td><td>#4682B4</td></tr>";
		echo "<tr><td style=\"background: lavender\">&nbsp;</td><td>Lavender</td><td>#E6E6FA</td><td style=\"background: tan\">&nbsp;</td><td>Tan</td><td>#D2B48C</td></tr>";
		echo "<tr><td style=\"background: lavenderblush\">&nbsp;</td><td>LavenderBlush</td><td>#FFF0F5</td><td style=\"background: teal\">&nbsp;</td><td>Teal</td><td>#008080</td></tr>";
		echo "<tr><td style=\"background: lawngreen\">&nbsp;</td><td>LawnGreen</td><td>#7CFC00</td><td style=\"background: thistle\">&nbsp;</td><td>Thistle</td><td>#D8BFD8</td></tr>";
		echo "<tr><td style=\"background: lemonchiffon\">&nbsp;</td><td>LemonChiffon</td><td>#FFFACD</td><td style=\"background: tomato\">&nbsp;</td><td>Tomato</td><td>#FF6347</td></tr>";
		echo "<tr><td style=\"background: lightblue\">&nbsp;</td><td>LightBlue</td><td>#ADD8E6</td><td style=\"background: turquoise\">&nbsp;</td><td>Turquoise</td><td>#40E0D0</td></tr>";
		echo "<tr><td style=\"background: lightcoral\">&nbsp;</td><td>LightCoral</td><td>#F08080</td><td style=\"background: violet\">&nbsp;</td><td>Violet</td><td>#EE82EE</td></tr>";
		echo "<tr><td style=\"background: lightcyan\">&nbsp;</td><td>LightCyan</td><td>#E0FFFF</td><td style=\"background: wheat\">&nbsp;</td><td>Wheat</td><td>#F5DEB3</td></tr>";
		echo "<tr><td style=\"background: lightgoldenrodyellow\">&nbsp;</td><td>LightGoldenrodYellow</td><td>#FAFAD2</td><td style=\"background: white\">&nbsp;</td><td>White</td><td>#FFFFFF</td></tr>";
		echo "<tr><td style=\"background: lightgreen\">&nbsp;</td><td>LightGreen</td><td>#90EE90</td><td style=\"background: whitesmoke\">&nbsp;</td><td>WhiteSmoke</td><td>#F5F5F5</td></tr>";
		echo "<tr><td style=\"background: lightgrey\">&nbsp;</td><td>LightGrey</td><td>#D3D3D3</td><td style=\"background: yellow\">&nbsp;</td><td>Yellow</td><td>#FFFF00</td></tr>";
		echo "<tr><td style=\"background: lightpink\">&nbsp;</td><td>LightPink</td><td>#FFB6C1</td><td style=\"background: yellowgreen\">&nbsp;</td><td>YellowGreen</td><td>#9ACD32</td></tr>";
    echo "</table>";
}


?>