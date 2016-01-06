tonkec = User.create!(
email: "antonija1023@gmail.com", 
password: "delta888",
password_confirmation: "delta888",
admin: true,
approved: true
)
#IS ADMIN
#CAN UPLOAD = CAN ADD API CONTENT

rick = User.create!( 
email: "rickagz@gmail.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: true,
approved: true
)
#IS ADMIN
#CAN UPLOAD = CAN ADD API CONTENT


# THESE SEEDS WILL BE DELETED RIGHT BEFORE LAUNCH
register = User.create!( 
email: "register@example.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: false,
approved: false
)
# register-only 
# NOT admin
#CANNOT UPLOAD = CANNOT ADD API CONTENT

newbie = User.create!( 
email: "newbie@example.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: false,
approved: true
)

#newbie 
# CAN ADD API Content
# NOT admin
#CAN UPLOAD = CAN ADD API CONTENT