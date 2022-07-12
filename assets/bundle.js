(()=>{"use strict";var e={307:(e,t,r)=>{r.r(t)}},t={};function r(a){var o=t[a];if(void 0!==o)return o.exports;var n=t[a]={exports:{}};return e[a](n,n.exports,r),n.exports}r.r=e=>{"undefined"!=typeof Symbol&&Symbol.toStringTag&&Object.defineProperty(e,Symbol.toStringTag,{value:"Module"}),Object.defineProperty(e,"__esModule",{value:!0})};r(307),window.onload=async function(){const e=await WebAssembly.instantiateStreaming(await fetch("assets/program.wasm")),t=document.querySelector("#operands-form"),r=Array.from(document.querySelectorAll(".operand-input")),a=document.querySelector("#output-data"),{memory:o,cadd:n,csub:s,cmul:i,cdiv:u}=e.instance.exports;r.forEach(((e,t,r)=>{e.addEventListener("keydown",(e=>{const a=r[t+1];"Enter"===e.key&&a&&(e.preventDefault(),a.value="",a.focus())}))})),t.addEventListener("submit",(e=>{e.preventDefault(),a.innerHTML="";const c=new FormData(t),d=r.map((e=>parseFloat(e.value)));let l;switch(c.get("operation").toString()){case"add":l=n(...d);break;case"sub":l=s(...d);break;case"mul":l=i(...d);break;case"div":l=u(...d);break;default:throw"Invalid option"}const p=function(e,t){return 0===e?0===t?"0":`${t}i`:0===t?`${e}`:t>0?`${e} + ${t}i`:`${e} ${t}i`}(...(e=>{const t=new Float64Array(o.buffer,e,2);return Array.from(t)})(l)),m=MathJax.tex2svg(p);a.appendChild(m)}))}})();