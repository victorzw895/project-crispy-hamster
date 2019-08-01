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
i5 = Industry.create :name => 'Accountant'
i6 = Industry.create :name => 'Marketing'
i7 = Industry.create :name => 'Agribusiness'
i8 = Industry.create :name => 'Labour'

User.destroy_all
puts "Creating Users"
u0 = User.create :email => 'admin@ga.co', :name => 'Admin', :password => 'chicken', :admin => true
u1 = User.create :email => 'autodesk@email.com', :name => 'AutoDesk', :company => true, :tag_line => 'MAKE ANYTHING', :about => 'Autodesk makes software for people who make things. If you’ve ever driven a high-performance car, admired a towering skyscraper, used a smartphone, or watched a great film, chances are you’ve experienced what millions of Autodesk customers are doing with our software.', :logo_image => 'https://damassets.autodesk.net/content/dam/mgs/mgs/brand-elements/tagline/tagline-lockup-stacked-tm-v3-1378x620.jpg', :banner_image => 'http://intellisolutions-dz.com/wp-content/uploads/2017/04/autodesk-banner.jpg', :more => 'https://www.autodesk.com.au/', :password => 'chicken'

u2 = User.create :email => 'sas@email.com', :name => 'SAS', :company => true, :tag_line => 'Innovate With Analytics', :about =>
"We envision a world where everyone can make better decisions, grounded in trusted data and assisted by the power and scale of SAS® Analytics. When decisions happen at just the right moment, advancements are set in motion and the world moves forward.", :logo_image => 'https://www.sas.com/en_ph/_jcr_content/socialShareImage.img.png', :banner_image => 'http://www.computradetech.com.ph/wp-content/uploads/2015/10/Sas-page-banner-350px-01.jpg', :more => 'https://www.sas.com/en_au/home.html', :password => 'chicken'

u3 = User.create :email => 'nuix@email.com', :name => 'NUIX', :company => true, :tag_line => 'Win the Case', :about => 'Nuix creates innovative software that empowers organizations to simply and quickly find the truth from any data in a digital world.
We are a passionate and talented team, delighting our customers with software that transforms data into actionable intelligence.

Nuix software helps organizations overcome the challenges of litigation, investigation, risk, compliance, governance, and security.', :logo_image => 'https://cdn.officer.com/files/base/cygnus/ofcr/image/2010/01/960w/nuix_10040330.jpg', :banner_image => 'https://cdn.pixabay.com/photo/2015/10/29/14/42/law-1012473_960_720.jpg', :more => 'https://www.nuix.com/', :password => 'chicken'

u4 = User.create :email => 'healthengine@email.com', :name => 'Health Engine', :company => true, :tag_line => 'Transforming access to healthcare', :about => "HealthEngine is Australia's largest online health marketplace, transforming the way Australians access and use healthcare services.

We are driven to advance the accessibility of healthcare for all Australians by improving access to information and technology, and ultimately improving the experience of healthcare services.

HealthEngine makes finding and booking health appointments online quick and easy. We help more than 3.5 million patients each month to connect with over 13,000 local health practitioners and book an appointment instantly.", :logo_image => 'https://image4.owler.com/logo/healthengine_owler_20160818_102857_original.png', :more => 'https://healthengine.com.au/', :password => 'chicken'

u5 = User.create :email => 'legalvision@email.com', :name => 'LegalVision', :company => true, :tag_line => 'A commercial law firm with a commitment to innovation', :about => "To transform legal services. We believe the way traditional law firms work is not the best way. We do things differently, to do things better. We are energetically building the world’s best legal services business. We achieve our mission by living our values and focusing on our drivers.", :logo_image => '/assets/legalvision.jpg', :banner_image => '/assets/legalvision-banner.png', :more => 'https://healthengine.com.au/', :password => 'chicken'

u6 = User.create :email => 'myob@email.com', :name => 'MYOB', :company => true, :tag_line => 'Single Touch Payroll in a click', :about => "We're not here to tell you what success should be. Maybe you want a day off every week, or more time to go surfing. Maybe you want a worldwide empire. Whatever you want for your business - we can help you achieve it. We offer business management solutions. More than 50 of them, to be exact. Everything to help you with accounting, payroll, payments, retail point of sale, CRM and professional tax solutions - and more.", :logo_image => 'https://pbs.twimg.com/profile_images/785239998249304064/_LM0t2_n.jpg', :banner_image => 'https://upload.wikimedia.org/wikipedia/commons/3/33/MYOB_Logo.png', :more => 'https://www.myob.com/au', :password => 'chicken'

u7 = User.create :email => 'solista@email.com', :name => 'Solista', :company => true, :tag_line => 'An award winning cloud transformation and security consultancy.', :about => "Solista is an award winning cloud transformation consultancy. We harness great technology, strategic thinking and leading project services to enable our clients to gain a sustainable competitive advantage in the digital economy.

Solista delivers the next generation of data management technologies to free business IT teams from binding service contracts, complicated environments, restrictive infrastructure and expensive capital outlays that traditional vendors and IT Integrators survive on.", :logo_image => 'https://www.solista.com.au/wp-content/uploads/2019/04/solista-logo-original-80px.png', :password => 'chicken'

u8 = User.create :email => 'bench@email.com', :name => 'Bench', :company => true, :tag_line => 'Marketing is Transforming', :about => "To empower marketers with cutting-edge technology in a way that helps their brands connect with customers more deeply during those moments that matter most.
Our goal is to help brands gain full control over their marketing technology stack so they can achieve measurable outcomes.", :logo_image => 'https://www.bandt.com.au/information/uploads/2018/08/Bench.jpg', :banner_image => 'https://i.ytimg.com/vi/NaD9hk5I29U/maxresdefault.jpg', :more => 'https://benchplatform.com/', :password => 'chicken'

u9 = User.create :email => 'agridigital@email.com', :name => 'Bench', :company => true, :tag_line => 'Transform the way you buy, sell and store grain', :about => "Enter AgriDigital, the world’s first cloud-based, multi-participant, commodity management platform. All the players across the agricultural supply chain - farmers, buyers, storage operators and in time, even consumers – can operate and interact on one platform for the transaction of their commodities the world over.

We have started in Australia and with grain; but this is just the beginning. Our vision is to make global agricultural supply chains simple, easy and secure - from farmer to consumer. We believe that anyone, anywhere, should be be able to trade and finance their agricultural commodities with confidence. The AgriDigital team is full of passionate and dedicated people who are making this happen.", :logo_image => 'https://image4.owler.com/logo/agridigital_owler_20180306_090938_original.png', :more => 'https://www.agridigital.io/', :password => 'chicken'

u10 = User.create :email => 'hipages@email.com', :name => 'HiPages', :company => true, :tag_line => 'We Believe that Great Companies come from Great People', :about => "hipages provides a better, smarter way to connect tradies and consumers and get the job done well.

We are on a mission to make home improvement effortlessly efficient. Our aim is to create a seamless experience for tradies and homeowners in place of the current unreliable – and unproductive – process that makes it a feat of mutual endurance.

We build technology that solves the frictions of an industry ready for optimisation, by redesigning the tradie/client relationship and transforming the way trade businesses operate.

To date, over two million Australians have changed the way they find, hire and manage trusted tradies to get a job done around their home.

hipages. Change the way you tradie.", :logo_image => 'https://media.glassdoor.com/sqll/773701/hipages-group-squarelogo-1468542829089.png', :banner_image => 'https://hipagesgroup.com.au/wp-content/uploads/2017/04/hipages_primary_logo_RGB-1-1.png', :more => 'https://hipagesgroup.com.au/', :password => 'chicken'

Post.destroy_all
puts "Creating posts"
p1 = Post.create :title => 'Designing the Near Future: Where Ideas, Solutions, and Actions Come Together', :content => 'When I first learned about the Near Future Summit, it sounded like an unusual gathering in an otherwise crowded conference circuit. Taking place in La Jolla, California, the event was billed as “A carefully curated community of brilliant and concerned ass-kickers tackling serious challenges without taking ourselves too seriously.” It sounded great,but my main reason for attending was to see what solutions, and action, would come from the event. In the end, changemakers like me want to help expedite a positive future. And with issues like inequality and climate change at the fore – we can’t wait to act.

While I wasn’t quite sure what to expect, I knew their mission aligned with my work at the Autodesk Foundation, where we focus on supporting creative solutions to the world’s most pressing challenges. This includes supporting the entrepreneurs and innovators working to address the impacts of automation on the workforce. You may have already seen some of the other ways that we’re committed to helping people adapt to the future of work. So, I was eager to join like-minded “near futurists” including those taking action to create a future where workers can excel.

Our goal was to inspire this audience of more than 200 curated entrepreneurs, activists, leaders, inventors, and investors. That included people like the Governor of California, Gavin Newsom, Beyond Meat CEO Ethan Brown, and American inventor Dean Kamen. We wanted to share Autodesk’s unique point of view and deep dedication to social and environmental impact. For us, the discussion about the future of work was front and center.', :image => 'https://adsknews.autodesk.com/app/uploads/2019/07/NFS_Day2Night_2019_062_1.jpg', :content_type => 'Article'

p2 = Post.create :title => 'Maya', :content => 'Make it with Maya computer animation software', :image => 'https://cerise.com/content/uploads/2017/02/hero-autodesk-maya.jpg', :content_type => 'Product'

p3 = Post.create :title => 'SAS® 9.4M6 is Now Available', :content => 'The sixth maintenance release for SAS 9.4, which includes the Analytical Products 15.1, is the most recent release of the SAS®9 platform and became available November 2018. SAS 9.4 TS1M6 (9.4M6) continues to harden the platform and deliver customer-requested functionality.', :image => 'https://support.sas.com/software/94/index.html', :content_type => 'Product'

p4 = Post.create :title => 'Achieve True End-to-end eDiscovery', :content => 'Nuix Ringtail puts the power of enhanced eDiscovery review, visual analytics, and predictive coding at your fingertips to help you uncover better evidence faster and quickly integrate it into your strategy for litigation and regulatory cases. Make Nuix Ringtail a key part of your end-to-end eDiscovery practice.

Amazingly Fast Review
Dramatically improve the speed and quality of your document review while delivering profound time and cost savings.

Powerful Analytics
Give all members of your legal team access to advanced data visualizations and everyday analytics—all as part of the base Nuix Ringtail license—to find key facts and patterns in your case data more quickly.

Efficiency And Productivity
Manage all your litigation projects using multi-tenancy reporting and tracking; rapid start-up, training, and support; and cross-functional eDiscovery workflows that make you more efficient and productive.', :image => 'https://cdfs.com.au/wp-content/uploads/2018/09/nuixRingtail.jpg', :content_type => 'Product'

p5 = Post.create :title => 'Anxiety & Depression: How Your GP Can Help', :content => 'From time to time, most adults feel stressed, worried or sad. However, when these feelings last for long periods of time, such as days, weeks or months, it’s likely that you are experiencing anxiety or depression. Understanding the signs of these conditions and checking in with a trusted GP can help you get things back on track.

When to see a GP about anxiety and depression
You may find it difficult to recognise the early signs of anxiety or depression, and they can present differently in different people. Common early signs can include one or more of the following:

Feeling a bit worried or flat
Feeling like you’re in a constant state of upset
You’ve lost interest in work, sports or activities you once enjoyed
Feeling deeply stressed or agitated most of the time
If you experience any of these symptoms, it’s important to check in with your GP.

Mental health experts recommend making contact with a GP as the best starting point for people experiencing anxiety or depression. Most Australian GPs are exposed to these conditions every day. In fact, in any one year, around 1 million Australian adults have depression, and over 2 million have anxiety.

What can a GP do to help with anxiety and depression?
Most Australian GPs are trained to recognise the signs and symptoms of anxiety and depression. They can make an on the spot diagnosis of your condition and also check for any physical health problems or medications that may be making your symptoms worse.

From here, your GP can provide you with information about anxiety and depression and talk to you about your preferences for available treatment.

One of the most helpful things your GP can do is to work with you to draw up a mental health treatment plan. The treatment plan will help your GP gather important information about how you are feeling. This plan will also help you get a Medicare rebate for psychological treatment should you choose that path.

As well as setting up your mental health treatment plan, your GP can provide brief counselling support, refer you for further treatment with a mental health professional, prescribe medication and schedule regular appointments to monitor your progress.

Consider booking a longer appointment

Before you see a GP about depression or anxiety, it’s important to book a double appointment. This will give you enough time to discuss the situation without feeling rushed. It will also provide time for you to fill out a mental health treatment plan.

Next steps
If you’re feeling anxious or depressed, book an appointment with a local GP as soon as possible. If you can’t get an appointment at your regular clinic, or if you would like to see a different doctor to discuss your symptoms, you can find and book an alternative convenient appointment, in a location of your choosing through HealthEngine.

', :image => 'https://healthengine.com.au/info/assets/photo-1526891993611-eca1e7d7b582-1024x683.jpeg', :content_type => 'Article'

p6 = Post.create :title => "HealthEngine celebrates new milestone for Australian health, recording one million bookings in a single month", :content => "Perth, Australia, 5 June 2019: HealthEngine has solidified its position as Australia's leading consumer healthcare platform, reaching one million monthly bookings in May 2019.

In a clear sign that Australians are embracing the ease and convenience of digital health, the company has now recorded the same number of bookings in a single month that first took a full three years to achieve (in 2015, HealthEngine celebrated one million bookings made on the platform since launching online bookings in 2012).

The healthcare platform has seen growth in demand and adoption across patients and providers, as tech-savvy Aussies turn to digital health to access on-demand healthcare.

Key HealthEngine facts include:

In the last 12 months, more than 3.6 million Australians have used HealthEngine to book an appointment with their provider
A HealthEngine powered appointment is booked every 3 seconds
More than 100,000 practices and practitioners are currently listed on the platform
77% of bookings are made via mobile
Nearly 90% of appointments made are with a patient’s existing care providers
Over half of HealthEngine users booking GP appointments (55%) saw their GP within 24 hours of booking
1 in 5 HealthEngine users see a GP within 4 hours of booking an appointment
Nearly 60% of appointments booked on HealthEngine are made outside of regular working hours, when the provider's reception is likely closed", :content_type => 'Press'


puts "associations"
u1.posts << p1 << p2
u2.posts << p3
u3.posts << p4
u4.posts << p5 << p6

u1.industries << i1
u2.industries << i1
u3.industries << i1 << i3
u4.industries << i1 << i4
u5.industries << i1 << i3
u6.industries << i1 << i5
u7.industries << i1
u8.industries << i1 << i6
u9.industries << i1 << i7
u10.industries << i1 << i8
