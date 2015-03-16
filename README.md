# TestServer

1. gem install padrino

2. padrino gen project DemoProject -a mysql -d datamapper -s jquery -e haml

3. Create file named config inside .bundle directory and add following in it

"----
BUNDLE_PATH: vendor/bundle
BUNDLE_BIN: bin
BUNDLE_DISABLE_SHARED_GEMS: '1'
BUNDLE_CLEAN: true"

4. Create a .rvmrc file and add following to it --
rvm 1.9.3-p327

6. Create database using mysql commands

5. Create db/migrate directory and add migration files there.

6. run following command to run migrations up and down --
	1. bin/padrino rake dm:migrate
	2. bin/padrino rake dm:migrate:down


