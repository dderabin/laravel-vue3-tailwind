## Install database
run sql script from database\laravel-vue-crud-sample.sql

## Database settings
Change database settings into .env

## Run application
npm run watch
php artisan serve

## Open website
http://127.0.0.1:8000/login (use address from php artisan serve command)

Username: max@test.de
Password: password

## Task
A CRUD function for vehicles is needed.

List
A tailwind table is to be integrated that displays all vehicles. This table should have a paginator. It should be adjustable how many data records should be displayed at the same time (5, 10, 20). 
Only as many data records are to be loaded and displayed as have been selected in the dropdown for the display of the maximum data records.
Only the data records selected in the paginator should be loaded.
When the data sets are loaded, the table should be displayed in grey and a loading symbol should be shown.
The displayed columns should be sortable in ascending and descending order. 
Only the contents of the table should be reloaded and updated. Not the entire page.
There should be a filter field in which you can search for the values in the columns. Even if a filter is filled in, only the content of the table should be reloaded. Not the complete page.

Zum erstellen ändern und löschen eines neuen Datensatzes soll eine neue Seite aufgerufen werden, so wie das bei der Neuanlage und Änderung eines Teams (http://127.0.0.1:8000/teams/11) der Fall ist. 

Es soll einen mousover über jeder Zeile / Record geben, und der Hintergrund der Zeile soll grau werden, wenn man mit der Maus darüber fährt.

Klickt man auf eine Zeile, so soll eine neue Detailseite geöffnet werden, in der die Details dargestellt werden. Dort soll es einen Ändern button geben, der zur Ändern Seite führt, auf der man den Datensatz ändern kann.

Es soll einen neuen Menüpunkt "Vehicles" geben, mit dem man die Dinge machen kann.

## Tailwind list

<!-- List -->
        <div class="mx-auto px-2 sm:px-6 lg:px-8 bg-gray-200">
            <div class="flex flex-col">
                <div class="-my-2 overflow-x-auto sm:-mx-6 lg:-mx-8">
                    <div class="py-2 align-middle inline-block min-w-full sm:px-6 lg:px-8">
                        <div class="shadow overflow-hidden border-b border-gray-200 sm:rounded-lg">
                            <table class="min-w-full divide-y divide-gray-200">
                                <thead class="bg-gray-50">
                                <tr>
                                    <th scope="col"
                                        class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Licence plate:
                                    </th>
                                    <th scope="col"
                                        class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        VIN
                                    </th>
                                    <th scope="col"
                                        class="px-6 py-3 text-left text-xs font-medium text-gray-500 uppercase tracking-wider">
                                        Name
                                    </th>
                                </tr>
                                </thead>
                                <tbody class="bg-white divide-y divide-gray-200">

                                <tr v-for="item of items.data" :key="item.id">
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ item.license_plate_number }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ item.vin }}</td>
                                    <td class="px-6 py-4 whitespace-nowrap text-sm text-gray-500">{{ item.name }}</td>
                                    
                                </tr>
                                </tbody>
                            </table>
                            <pagination class="mt-0 bg-gray-100" :links="items.links" />
                        </div>
                    </div>
                </div>
            </div>
        </div>