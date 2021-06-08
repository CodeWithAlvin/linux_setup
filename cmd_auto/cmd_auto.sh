function env(){
	source $1/bin/activate
}
function djrun(){
	python manage.py runserver
}
function makemig(){
	python manage.py makemigrations
}
function migrate(){
	python manage.py migrate
}

export env djrun makemig migrate
