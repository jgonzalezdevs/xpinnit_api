interprete = @python3 manage.py

install:
	@pip3 install --upgrade pip
	@pip3 install -r web/requirements.pip

migrations:
	$(interprete) makemigrations
	$(interprete) migrate

reset_db:
	$(interprete) flush --noinput

defaults:
	$(interprete) shell < management/defaults/users.py
	$(interprete) shell < management/defaults/permissions.py
	$(interprete) shell < documentation/defaults/defaults.py
	$(interprete) shell < documentation/defaults/permissions.py
	$(interprete) shell < documentation/defaults/permissions_1622514942.py

seeder:
	$(interprete) shell < management/seeders/users.py
	$(interprete) shell < documentation/seeders/assignations.py

feeddb: defaults seeder
