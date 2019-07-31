# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Industry.destroy_all
puts "Creating Industries"
i1 = Industry.create :name => 'Computer Software'
i2 = Industry.create :name => 'Construction'
i3 = Industry.create :name => "Attorneys Law Firms"
i4 = Industry.create :name => 'Health Care and Social Assistance'

User.destroy_all
puts "Creating Users"
u0 = User.create :email => 'admin@ga.co', :name => 'Admin', :password => 'chicken', :admin => true
u1 = User.create :email => 'autodesk@email.com', :name => 'AutoDesk', :tag_line => 'MAKE ANYTHING', :about => 'Autodesk makes software for people who make things. If you’ve ever driven a high-performance car, admired a towering skyscraper, used a smartphone, or watched a great film, chances are you’ve experienced what millions of Autodesk customers are doing with our software.', :logo_image => 'https://damassets.autodesk.net/content/dam/mgs/mgs/brand-elements/tagline/tagline-lockup-stacked-tm-v3-1378x620.jpg', :banner_image => 'http://intellisolutions-dz.com/wp-content/uploads/2017/04/autodesk-banner.jpg', :more => 'https://www.autodesk.com.au/', :password => 'chicken'

u2 = User.create :email => 'sas@email.com', :name => 'SAS', :tag_line => 'Innovate With Analytics', :about =>
"We envision a world where everyone can make better decisions, grounded in trusted data and assisted by the power and scale of SAS® Analytics. When decisions happen at just the right moment, advancements are set in motion and the world moves forward.", :logo_image => 'https://www.sas.com/en_ph/_jcr_content/socialShareImage.img.png', :banner_image => 'http://www.computradetech.com.ph/wp-content/uploads/2015/10/Sas-page-banner-350px-01.jpg', :more => 'https://www.sas.com/en_au/home.html', :password => 'chicken'

u3 = User.create :email => 'nuix@email.com', :name => 'NUIX', :tag_line => 'Win the Case', :about => 'Nuix creates innovative software that empowers organizations to simply and quickly find the truth from any data in a digital world.
We are a passionate and talented team, delighting our customers with software that transforms data into actionable intelligence.

Nuix software helps organizations overcome the challenges of litigation, investigation, risk, compliance, governance, and security.', :logo_image => 'https://cdn.officer.com/files/base/cygnus/ofcr/image/2010/01/960w/nuix_10040330.jpg', :banner_image => 'https://cdn.pixabay.com/photo/2015/10/29/14/42/law-1012473_960_720.jpg', :more => 'https://www.nuix.com/', :password => 'chicken'

u4 = User.create :email => 'healthengine@email.com', :name => 'Health Engine', :tag_line => 'Transforming access to healthcare', :about => "HealthEngine is Australia's largest online health marketplace, transforming the way Australians access and use healthcare services.

We are driven to advance the accessibility of healthcare for all Australians by improving access to information and technology, and ultimately improving the experience of healthcare services.

HealthEngine makes finding and booking health appointments online quick and easy. We help more than 3.5 million patients each month to connect with over 13,000 local health practitioners and book an appointment instantly.", :logo_image => 'https://image4.owler.com/logo/healthengine_owler_20160818_102857_original.png', :more => 'https://healthengine.com.au/', :password => 'chicken'

Post.destroy_all
puts "Creating posts"
p1 = Post.create :title => 'Designing the Near Future: Where Ideas, Solutions, and Actions Come Together', :content => 'When I first learned about the Near Future Summit, it sounded like an unusual gathering in an otherwise crowded conference circuit. Taking place in La Jolla, California, the event was billed as “A carefully curated community of brilliant and concerned ass-kickers tackling serious challenges without taking ourselves too seriously.” It sounded great,but my main reason for attending was to see what solutions, and action, would come from the event. In the end, changemakers like me want to help expedite a positive future. And with issues like inequality and climate change at the fore – we can’t wait to act.

While I wasn’t quite sure what to expect, I knew their mission aligned with my work at the Autodesk Foundation, where we focus on supporting creative solutions to the world’s most pressing challenges. This includes supporting the entrepreneurs and innovators working to address the impacts of automation on the workforce. You may have already seen some of the other ways that we’re committed to helping people adapt to the future of work. So, I was eager to join like-minded “near futurists” including those taking action to create a future where workers can excel.

Our goal was to inspire this audience of more than 200 curated entrepreneurs, activists, leaders, inventors, and investors. That included people like the Governor of California, Gavin Newsom, Beyond Meat CEO Ethan Brown, and American inventor Dean Kamen. We wanted to share Autodesk’s unique point of view and deep dedication to social and environmental impact. For us, the discussion about the future of work was front and center.', :media => 'https://adsknews.autodesk.com/app/uploads/2019/07/NFS_Day2Night_2019_062_1.jpg', :content_type => 'Article'

p2 = Post.create :title => 'Maya', :content => 'Make it with Maya computer animation software', :media => 'https://cerise.com/content/uploads/2017/02/hero-autodesk-maya.jpg', :content_type => 'Product'

p3 = Post.create :title => 'SAS® 9.4M6 is Now Available', :content => 'The sixth maintenance release for SAS 9.4, which includes the Analytical Products 15.1, is the most recent release of the SAS®9 platform and became available November 2018. SAS 9.4 TS1M6 (9.4M6) continues to harden the platform and deliver customer-requested functionality.', :media => 'https://support.sas.com/software/94/index.html', :content_type => 'Product'

puts "associations"
u1.posts << p1 << p2
u2.posts << p3

u1.industries << i1
u2.industries << i1
u3.industries << i1 << i3
u4.industries << i1 << i4
