<?php

/*
 * PHP SimpleXML
 * Loading a XML from a file, adding new elements and editing elements
 */
//prevent form redirect
if(isset($_SERVER['HTTP_REFERER'])){
    header("Location: " . $_SERVER['HTTP_REFERER']);    
} else {
    echo "An Error";
}

//get details from form
$name = $_POST["uName"];
$email = $_POST["uEmail"];


//check for file
if (file_exists('email.xml')) {
    //loads the xml and returns a simplexml object 
    $xml = simplexml_load_file('email.xml');
    $newChild = $xml->addChild('newsletter');
    $newChild->addChild('uName', $name);
    $newChild->addChild('uEmail', $email);

    //transforming the object in xml format
    $output = $xml->asXML();
    
} else {
    exit('Failed to open email.xml.');
}
//save changes to xml file
 file_put_contents('email.xml', $xml->asXML());
?>
<?php

$writer = new XMLWriter();  
$writer->openURI('php://output');   
$writer->startDocument('1.0','UTF-8');   
$writer->setIndent(4);
$writer->startElement('newsletter');
$writer->writeElement('uName', $name );
$writer->writeElement('uEmail', $email );
$writer->endElement();
$writer->endDocument();   
$writer->flush();

?>