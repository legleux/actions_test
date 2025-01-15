const exampleSocket = new WebSocket(
    "ws://localhost:8765",
  );
let url="https://cat.lglx.net"
let url2= "https://google.com"

let message = "The cat has been clicked!"
let prompt_message = "What's your name?"
var button = document.getElementById("cat-button");

button.addEventListener("click", function(event){
    alert(message);
    let foo = prompt(prompt_message);
    console.log(`I was given ${foo}`);
    document.location = `https://cat.lglx.net/${foo}`;
});
