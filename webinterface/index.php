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
  <form role="form" method="POST" action="engine.php">
    <div class="form-group">
      <label for="word">Word:</label>
      <input type="text" class="form-control" name="word" placeholder="Type your word">
    </div>
    <div class="form-group">
      <label for="lang">Language: (Type the language code. For translate english to french, type fr)</label>
      <input type="text" class="form-control" name="lang" placeholder="Only (fr, mt, it, ru, ar, ja, de, el, nl, ru, pt)">
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>
    </body>
<?php

