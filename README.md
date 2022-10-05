# Ruby on Rails with GraphQL.

This is a simple Rails application integrating GraphQL as a query language.

## Mutations

This is a better way to send a post request in order to save the record

**GraphQL Section.**

```
mutation createUser(
	$first_name:String,
	$last_name:String,
	$street:String,
	$number:Int,
	$city:String,
	$postcode:Int,
	$country:String

){
	createUser(
		firstName: $first_name,
		lastName: $last_name,
		street: $street,
		number: $number,
		city: $city,
		postcode: $postcode,
		country: $country
	){
		id
		postcode
		city
	}
}
```

**Query Section.**

It sends a JSON object.

```
{
	"first_name": "David",
	"last_name": "Paredes",
	"street": "Cuarzo",
	"number": 624,
	"city": "Mexico",
	"postcode": 78324,
	"country": "Mexico"
}
```
