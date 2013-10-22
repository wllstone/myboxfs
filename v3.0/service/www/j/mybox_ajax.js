/* $id mybox_ajax.js (c) Tracenetwork Corporation Sdn. Bhd. $ */
function createRequestObject() {var con_id;try { con_id=new ActiveXObject("Msxml2.XMLHTTP"); }catch(e) {try { con_id=new ActiveXObject("Microsoft.XMLHTTP");}catch(f) { con_id=null; }};if(!con_id&&typeof XMLHttpRequest!="undefined") {con_id=new XMLHttpRequest();};return con_id;}
var http = createRequestObject();
function if_response(response) {if(response) {if(response.match(/Session expired/)!=null) {top.location.href='/index.exh?l=5';};}};
function handleResponseText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('ajax_msg');document.getElementById("ajax_msg").innerHTML = response;}}catch(e){};}
function sendRequestPost(file,xpost) {try{http.open('POST',file);http.setRequestHeader('Content-Type', "application/x-www-form-urlencoded");http.onreadystatechange = handleResponseText;http.send(xpost);}catch(e){};}
function sendRequestGet(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = handleResponseText;http.send(null);} catch(e){};}
function update_resourceText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('resource');document.getElementById("resource").innerHTML = response;}}catch(e){};}
function update_resource(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = update_resourceText;http.send(null);} catch(e){};}
function update_utimeText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('utime');document.getElementById("utime").innerHTML = response;}}catch(e){};}
function update_utime(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = update_utimeText;http.send(null);} catch(e){};}
function backup_taskText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('backup');document.getElementById("backup").innerHTML = response;}}catch(e){};}
function backup_task(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = backup_taskText;http.send(null);} catch(e){};}
function pptpuser_taskText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('pptpuser');document.getElementById("pptpuser").innerHTML = response;}}catch(e){};}
function pptpuser_task(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = pptpuser_taskText;http.send(null);} catch(e){};}
function log1_taskText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('log1');document.getElementById("log1").innerHTML = response;}}catch(e){};}
function log1_task(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = log1_taskText;http.send(null);} catch(e){};}
function log1_taskText_download() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');self.location.href = response;}}catch(e){};}
function log1_task_download(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = log1_taskText_download;http.send(null);} catch(e){};}
function rtstatus_taskText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('rtstatus');document.getElementById("rtstatus").innerHTML = response;}}catch(e){};}
function rtstatus_task(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = rtstatus_taskText;http.send(null);} catch(e){};}
function update_intfText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);do_hide('msgi');do_show('intf');document.getElementById("intf").innerHTML = response;}}catch(e){};}
function update_intf(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = update_intfText;http.send(null);} catch(e){};}
function update_SessionText() {try {if((http.readyState == 4)&& (http.status == 200)){var response = http.responseText;if_response(response);}}catch(e){};}
function update_Session(params) {try{http.open('GET',params);http.setRequestHeader('Content-Type', 'application/x-www-form-urlencoded');http.onreadystatechange = update_SessionText;http.send(null);} catch(e){};}
