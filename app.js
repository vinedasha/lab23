function do_stuff()
{

	var blk = document.getElementById('block-result');

	blk.innerHTML = '<span class="note">hello, world!</span>';
}
	
funcrion main()
{
	var btn = document.getElementById('button-action');
	
	bth.addEventListener('click', do_stuff, false);
}

window.addEventListener('load', main, false);
