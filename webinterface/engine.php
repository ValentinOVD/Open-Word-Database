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

        <ul>

    <div class="form-group">
<?php
$kik = htmlspecialchars($_POST["lang"]);
$kika = htmlspecialchars($_POST["word"]);
$command = ("/home/x/www/owd/translation-en-to-x.sh ".$kik." ".$kika);
echo "<p> Word translated into ".$kik." <pre>".shell_exec(escapeshellcmd($command))."</pre></p>";
echo $pro;
?>

    </div>
</div>
    </body>
