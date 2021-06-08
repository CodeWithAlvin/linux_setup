local_home="/storage/emulated/0"

function alvin(){
	cd $local_home
}

function prog(){
	cd $local_home/program$1
}

function configspace(){
	cd ~/../usr/etc/manuals/
}

export alvin prog configspace
