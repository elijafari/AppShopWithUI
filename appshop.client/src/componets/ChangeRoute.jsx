export function ChangeRoute(to) {
//window.open('http://localhost:3000'+to, '_blank');

//window.location='http://localhost:3000'+to;
window.location='http://localhost:5173'+to;
}

export function GetLocalhostServer(action) {
 //return 'https://localhost:7023/'+action;
 return 'http://localhost:5179/'+action;
  }