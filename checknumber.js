function check_value(){
    let varm = true;

    let inputc = document.getElementById("num");
    console.log(inputc.value);
    if(isNaN(inputc.value) || inputc.value.length!=10 ){
        inputc.value= '';
        varm = false;
    }
    return varm;
}
function check_pass(){
    let varm2 = true;
    let inputc2 = document.getElementById("mdp1");
    if(inputc2.value.length<=8){ inputc2.value= ''; varm2 = false;}    
    return varm2;
}
function check_pass3(){
    let varm3 = true;

    let inputc2 = document.getElementById("mdp1");
    let inputc3 = document.getElementById("mdp2");
    if(inputc2.value!=inputc3.value){
        inputc3.value= '';
        varm3 = false;
    }
    return varm3;
}
function Checking(){
    let checker1 = check_value();
    let checker2 = check_pass();
    let checker3 = check_pass3();
    if(!checker1){
        alert('Veuillez saisir un numéro de télephone valide.');
        
    }
    if(!checker2){
        alert('Veuillez saisir un mot de passe de 8 caractères minimum.');
    }
    if(!checker3){
        alert('Vos deux mots de passe ne correspondent pas, Veuillez réessayer!');
    }
    return checker1 && checker2 && checker3;


}


