<!DOCTYPE html>
<html>
    <head>
        <title>FT Test</title>
        <meta charset="utf-8" />
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
    </head>
    <body>
	<div class="container">
           <h2>OWD Translator</h2>

            <p>
               Welcome on Open Word Database Online<br />The Quick Word Translator<br />
           </p>

           <div class="form-group">
<?php
$kik = htmlspecialchars($_POST["lang"]);
$kika = htmlspecialchars($_POST["word"]);
putenv('LC_ALL='.$kik);
setlocale(LC_ALL, $kik);
bindtextdomain("ms", "/home/valentino/www/owd/locale");
textdomain("ms");
echo "<p> Word translated into ".$kik." <pre>".gettext($kika)."</pre></p>";
?>

          </div>
       </div>
    </body>
