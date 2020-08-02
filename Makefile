.PHONY: test

help:
	@echo
	@echo "======================================================================"
	@echo
	@echo "🛠  UTILS"
	@echo
	@echo "mig:        make and run migrations"
	@echo "super:      create superuser"
	@echo "srv:        run dev server"
	@echo
	@echo "🖥  UI"
	@echo
	@echo "ind:        open index page"
	@echo "admin:      open admin"
	@echo
	@echo "📦 DEPENDENCIES"
	@echo
	@echo "env:        show environment info"
	@echo "deps:       list prod dependencies"
	@echo
	@echo "======================================================================"
	@echo

#
# 🛠 UTILS
#

mig:
	poetry run python manage.py makemigrations; poetry run python manage.py migrate

super:
	poetry run python manage.py createsuperuser

srv:
	poetry run python manage.py runserver

#
# 🖥  UI
#

ind:
	open http://localhost:8000/index

admin:
	open http://localhost:8000/admin

#
# 📦 DEPENDENCIES
#

env:
	poetry env info

deps:
	poetry show --tree --no-dev
