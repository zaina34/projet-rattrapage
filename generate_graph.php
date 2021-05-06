<?php

#Le fichier jpgraph.php doit être inclus quelque soit le type de graphique voulu
require_once("jpgraph/src/jpgraph.php");
#Le fichier jpgraph_bar.php est dédié au tracé d'histogramme.
require_once("jpgraph/src/jpgraph_pie.php");

include('Tools.php');

$bdd= getBD();

$conditions = "";

if(isset($_GET['gnm'])){
    $conditions .= "NOM_GARE=\"".$_GET['gnm']."\"";
}else{
    $conditions .= "1=0";
}

if(isset($_GET['gan']) && ($_GET['gan']!="*")){
    $conditions .= " and ANNEE=\"".$_GET['gan']."\"";
}

$rep = $bdd->query('select POURCENTAGE, `CLASSE_AGE` from FREQUENTATION where '.$conditions.' order by POURCENTAGE') ;

$donnees = array();
$legends = array();

while ($ligne = $rep ->fetch()) {
    $donnees[] = ($ligne['POURCENTAGE']);
    $legends[] = ($ligne['CLASSE_AGE']);
}

$data = $donnees;

// Create the Pie Graph. 
$graph = new PieGraph(350,250);

// Some data
$data = $donnees;
 
// A new graph
$graph = new PieGraph(400,420);
$graph->SetAntiAliasing();
 
//$graph->title->SetFont(FF_ARIAL, FS_BOLD, 14);
//$graph->title->Set('Strasbourg');
//$graph->title->SetMargin(10);
 
//$graph->subtitle->SetFont(FF_ARIAL, FS_BOLD, 10);
//$graph->subtitle->Set('2016');
 
// The pie plot
$p1 = new PiePlot($data);
$p1->SetSliceColors(array('darkred','navy','lightblue','orange','gray','teal'));
 
// Move center of pie to the left to make better room
// for the legend
$p1->SetSize(0.3);
$p1->SetCenter(0.5,0.47);
$p1->value->Show();
//$p1->value->SetFont(FF_ARIAL,FS_NORMAL,10);
 
// Legends
$p1->SetLegends($legends);
$graph->legend->SetPos(0.5,0.97,'center','bottom');
$graph->legend->SetColumns(3);
 
$graph->Add($p1);
$graph->Stroke();

?>