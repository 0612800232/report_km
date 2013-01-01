function toggleNext(el,t) {
	var next = el.nextSibling;
	while(next.nodeType != 1) next = next.nextSibling;
	if(t){next.style.display = ((next.style.display == "none")?"block":"none");return;}
	(el.className != "h4over")?(el.className = "h4over"):(el.className = " ");
	var	uls= document.getElementsByTagName("ul");	
	next.style.display = ((next.style.display == "none")?"block":"none");
}
function toggleNextByTagName(tname) {
	var ccn="clicker";
	var clickers = document.getElementsByTagName(tname);
	for (i=0; i<clickers.length; i++) {
		clickers[i].className+=" "+ccn;
		clickers[i].onclick = function() { toggleNext(this) }
		//toggleNext(clickers[i],true);
	}
}
window.onload = function(){ toggleNextByTagName('h4') }

var flag = false;
var open_close = false;

//隐藏菜单功能
function shift_status(button)
{
	var aa = self.parent.frames["menu"].parent;
	
	alert(aa.innerHTML);
	//top.document.getElementsByTagName("frameset")[0].rows="0,*";
	var menu = self.parent.frames["content"].document.getElementsByName('menu')[0]; 
	var main = self.parent.frames["content"].document.getElementsByName('main')[0]; 
	if(menu.width == 191){
		menu.width = 1;
		main.width = Number(main.width) + Number(191);
		//button.value="显示菜单";
		button.title="显示菜单";
	}
	else{
		menu.width = 191;
		main.width = Number(main.width) - Number(191);
		//button.value="隐藏菜单";
		button.title="隐藏菜单";
	}
}

function menu_tree(button){
	if(!open_close){
		var op = self.parent.frames["content"].frames["menu"].document.getElementById('AllOpen_3');
		op.onclick();
		//button.value="全部折叠";
		button.title="全部折叠";
		open_close = true;
	}else{
		var cl = self.parent.frames["content"].frames["menu"].document.getElementById('AllClose_3');
		cl.onclick();
		//button.value="全部展开";
		button.title="全部展开";
		open_close = false;
	}
}