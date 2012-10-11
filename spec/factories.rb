Factory.define :user do |user|
	user.name										"foobar san"
	user.email									"foo@bar.com"
	user.password								"foobar"
	user.password_confirmation	"foobar"
end

Factory.sequence :email do |n|
	"person-#{n}@example.com"
end
