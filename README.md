# Warranty-Management-Module-Business-Central-AL-
# Overview

This project is a custom Warranty Management solution developed for Microsoft Dynamics 365 Business Central using the AL language.
It enables organizations to efficiently track and manage product warranties from the moment an item is sold until its warranty expires.

The goal was to understand how to extend Business Central’s standard functionality by integrating custom tables, pages, and business logic using event subscribers.

# Key Highlights
 Integrated with Sales Process – Warranty details are linked directly to Sales Lines.

 Custom Warranty Table – Stores warranty information (item, customer, dates, period).

 Auto-Creation Logic – Warranties are automatically generated when sales orders are posted.

 Clean UI Extension – Adds a new Warranty Information group inside the Sales Order Subform.

 Future Ready – Can easily be extended for expiry notifications or setup defaults.

 # Functional Flow

Sales Order Created  
     ↓  
User enters warranty details (period, start date, etc.)  
     ↓  
Order is posted → Event Subscriber triggers  
     ↓  
Warranty Management Codeunit creates warranty record  
     ↓  
Warranty appears in the Warranty List page  

<img width="1795" height="656" alt="image" src="https://github.com/user-attachments/assets/413851d9-9585-40bc-a488-e410c0ad7508" />

