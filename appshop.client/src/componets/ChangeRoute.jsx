export function ChangeRoute(to) {
//window.open('http://localhost:3000'+to, '_blank');

window.location='http://localhost:3000'+to;
}

export function GetLocalhostServer(action) {
 return 'https://localhost:7023/'+action;
  }