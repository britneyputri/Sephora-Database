# Sephora Database Management

<img src="https://images.bfmtv.com/toaB_fn7gNblK-GbZtWeDKfpzm8=/6x69:1254x771/1248x0/images/Sephora-preparez-le-Black-Friday-grace-aux-offres-disponibles-1171053.jpg">

This is a project that I worked on during my studies in Singapore Management University (SMU) for a module called Business Data Management (BDM)💻. Do scroll down to understand the goals and functionality of the codes! 

👇👇👇👇👇

### Brief Description of Case Example: Sephora
Sephora is a French multinational retailer for personal care and beauty products featuring up to 3000 brands, including Sephora Collection's private label. Their product offerings include cosmetics, skincare, body, fragrance, body lotions, hair care, and nail colour, mainly targeting the female market. For this project, we will be analysing the business flow process using the ER diagram specifically for its online eCommerce platform.

### Functionality of The Database 

#### Track Records of Customer 👩🏻
Sephora offers online shopping for its users on a website. Sephora keeps track of the customer’s Email, Name, and Hp_no. for every online customer to facilitate its online business functions. Email is used as a unique customer identifier. A customer must only be either a member or a non-member.

For members, additional information is also requested and stored. These are personal particulars that Sephora uses to customise their shopping    experience. 

Each member is identified by their unique Member_ID. Other details that are stored include the member’s Date_of_birth, Membership_tier, Age, Accumulated_Points, and date of member’s account creation represented by Date_Created. 
- Date_Created is composed of time and date. 
- Membership tiers are used to differentiate a member’s entitlement to progressive rewards. 
- Accumulated points are derived from the total amount paid for every online purchase order. For non-members, no additional information is stored.

#### Order Tracking 🛒💰
For each order, the database needs to keep track of the customer who made the order, the payment made, and the products that the customer purchases. Each customer can purchase many products. Each payment can be linked to only one customer’s single purchase order. 
- Each product can be bought by any number of customers who have made payment. 
- The Purchase Order entity captures order instances, and each instance is identified by an Order_ID. 
- Each Purchase Order also contains an Order_date, Points_earned, and Delivery_address. For Order_date, it is composed of date and time. 
- Points earned are also tracked, and it is a derived attribute from Total_paid. The database also captures the Quantity purchased for each product in each purchase order.

Online payment must be made for each order and each order requires one payment. 
- Each payment made is identified by Payment_ID, and has Payment_date and Total_paid as attributes. 
- There are only three payment options available for a customer to make payment, they are: Paypal, Atome or CreditCard. Paypal transactions have an attribute of Ref_no. 
- For Atome, it has Account_ID as an attribute. CreditCard has 2 attributes: Account_No and Bank_Name.

#### Product Tracking 💄 
Every type of product is uniquely identified by Product_ID, and the database also keeps track of the product Name, Price, Brand_name, Category, and Stock.

Products sold by Sephora are supplied by Distributors. Each distributor can distribute one or many products, but one product can only be supplied by one distributor. Distributors are identified by their Distributor_ID, and Sephora also keeps track of Distributor_names and Distributor_addresses.

#### Beauty Services 💅🏻
Besides purchasing products, Sephora customers can also book Beauty Service appointments online. 
- A customer can make many beauty service appointments, but one beauty service appointment can only be linked to one customer. 
- A beauty service appointment is uniquely identified by Booking_ID. 
- The database also records the Service_type provided, Booking_time, Store_location. 
- Booking time is a composite attribute that is made up of the booking date and time. 
- Store location is also a composite attribute, made up of the Branch ID and the Address. 
- Payment for the beauty service is also made online, same as how payment is made for purchase of Sephora’s products. 
- Each beauty service appointment can only be linked to one payment. Each payment can also only be linked to only one beauty service appointment.
