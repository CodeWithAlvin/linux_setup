#!/bin/bash
echo "initalizing git.sh"

# global vars or frequenent cmds
push_cmd="git push origin"
add_cmd="git add"
commit_cmd="git commit"

function push(){
	if [ -z "$1" ] 
	then
		echo "pushing master branch"
		$push_cmd "master"
	else
		echo "pushing" $1 "branch"
		$push_cmd $1
	fi

}

# Repo level push all changes
function rpush(){
	echo "adding all changes and pushing them"
	($add_cmd -A)
	$commit_cmd
	push
}

# Directory push all changes
function dpush(){
	echo "adding current directory changes and pushing them"
	($add_cmd .)
	$commit_cmd
	push
}

# repo level commit all
function rcommit(){
	echo "adding and commiting all changes"
	($add_cmd -A)
        $commit_cmd
}

# directory level commit
function dcommit(){
	echo "adding and commiting current directory changes"
	($add_cmd .)
	$commit_cmd
}




export push rpush dpush rcommit dcommit
