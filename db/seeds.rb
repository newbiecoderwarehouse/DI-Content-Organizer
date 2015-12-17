require 'open-uri'
url = open("http://newbiecoderwarehouse.github.io/design-inspiration-api/apis/typography.json").read
json_data = JSON.parse(url)
@content = json_data["results"]
@content.each do |x|
  Typography.create!(:title => x["title"], :url => x["link"], :source => x["source"], :user_id => 1, :include => "yes")
end

# user_id is set to one so that all of these come from tonkec
# All of the filler API content is included.

unapproved = Typography.create!(
title: "This one should never be approved",
url: "invalidurl.c",
source: "Does not know source",
user_id: 2,
include: "no"
)

# Unapproved seeds are assigned to Rick.
# Never approve his seeds.

awaitingApproval = Typography.create!(
title: "Newbie to be approved (default include: no, in seed)",
url: "http://rxsharp.github.io/my-snapfile/images/menu-icon.svg",
source: "http://rxsharp.github.io/my-snapfile/images/menu-icon.svg",
user_id: 4,
include: "no"
)


tonkec = User.create!(
email: "tonkec@changeit.com", 
password: "delta888",
password_confirmation: "delta888",
admin: true,
uploader: true
)
#IS ADMIN
#CAN UPLOAD = CAN ADD API CONTENT

rick = User.create!( 
email: "rickagz@gmail.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: true,
uploader: true
)
#IS ADMIN
#CAN UPLOAD = CAN ADD API CONTENT


# THESE SEEDS WILL BE DELETED RIGHT BEFORE LAUNCH
register = User.create!( 
email: "register@example.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: false,
uploader: false
)
# register-only 
# NOT admin
#CANNOT UPLOAD = CANNOT ADD API CONTENT

newbie = User.create!( 
email: "newbie@example.com", 
password: "delta888", 
password_confirmation: "delta888",
admin: false,
uploader: true
)

#newbie 
# CAN ADD API Content
# NOT admin
#CAN UPLOAD = CAN ADD API CONTENT