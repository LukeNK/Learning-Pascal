"use strict";
//https://codingcompetitions.withgoogle.com/kickstart/round/000000000019ffc8/00000000002d83dc

let x = 1, y = 1;

function isNumeric(str) {
  if (typeof str != "string") return false;
  return !isNaN(str) && !isNaN(parseFloat(str)) 
}

function execute(code) {
    let l1 = 0;
    for (; l1 < code.length; l1++) {
        let c = code[l1];
        if (isNumeric(c)) {
            let bracket = 1; let newCode = '';
            let l2;
            for (l2 = 2; l2 < code.length; l2++) {
                if (code[l1 + l2] == '(') {bracket += 1}
                else if (code[l1 + l2] == ')') {bracket -= 1}
                if (bracket = 0) break;
                newCode = newCode + code[l2];
            }
            l1 = l1 + l2 + 1;
            for (l2 = 2; l2 <= parseInt(c); l2++) execute(newCode);
        } else switch (c) {
            case 'N':
                x -= 1;
                break;
            case 'E': 
                y += 1;
                break;
            case 'S':
                x += 1;
                break;
            case 'W': 
                y -= 1;
                break;
        }
    }
}

execute('3(SE)');
console.log(x + ' '+ y);
