create database BeautyBoutique;
use BeautyBoutique;
CREATE TABLE UserRegistration (
    RegistrationId INT NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    UserName VARCHAR(25),
    Password VARCHAR(15),
    City VARCHAR(25),
    EmailID VARCHAR(35),
    MobileNumber VARCHAR(10),
    PRIMARY KEY (RegistrationId)
);

drop table allProduct;
drop table cart;

CREATE TABLE allProduct (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);

INSERT INTO allProduct(ProductId,ProductName,ProductDescription,ProductPrice,AvailableQuantity)
Values   (11, 'Lavender Relaxing Body Lotion', 'A soothing lavender-scented body lotion that nourishes and hydrates your skin.', 1299, 50),
    (12, 'Eucalyptus Mint Shower Gel', 'Invigorate your senses with this refreshing eucalyptus and mint scented shower gel.', 899, 40),
    (13, 'Coconut and Shea Butter Body Scrub', 'Exfoliate and moisturize with this luxurious coconut and shea butter body scrub.', 1499, 30),
    (14, 'Tea Tree and Aloe Vera Body Wash', 'A gentle body wash enriched with tea tree oil and aloe vera for sensitive skin.', 999, 45),
    (15, 'Rosehip and Argan Oil Body Serum', 'Restore your skin\'s natural radiance with this rejuvenating body serum.', 1999, 25),
    (16, 'Peppermint Foot Cream', 'Revive tired feet with this cooling peppermint-infused foot cream.', 799, 60),
    (17, 'Oatmeal and Honey Bath Bombs', 'Indulge in a soothing bath experience with these oatmeal and honey bath bombs.', 599, 75),
    (18, 'Cucumber and Green Tea Facial Cleanser', 'A gentle facial cleanser with the refreshing scent of cucumber and green tea.', 1199, 55),
    (19, 'Lavender and Chamomile Body Oil', 'Relax and unwind with this calming lavender and chamomile body oil.', 1699, 35),
    (20, 'Acai Berry Lip Balm', 'Keep your lips moisturized and protected with the nourishing acai berry lip balm.', 349, 100),
    (21, 'Matte Liquid Lipstick - Ruby Red', 'Achieve a bold, long-lasting lip color with this vibrant ruby red matte liquid lipstick.', 1299, 100),
    (22, 'Nourishing Cream Foundation - Natural Beige', 'A creamy foundation that provides full coverage and nourishes your skin with natural beige tone.', 1599, 80),
    (23, 'Eyeshadow Palette - Smoky Glam', 'Create stunning smoky eye looks with this versatile eyeshadow palette featuring a range of glamorous shades.', 1899, 60),
    (24, 'Highlighter Stick - Champagne Glow', 'Add a radiant glow to your complexion with this easy-to-apply champagne-hued highlighter stick.', 899, 120),
    (25, 'Setting Spray - Dewy Finish', 'Lock your makeup in place and achieve a dewy finish with this setting spray.', 1049, 90),
    (26, 'Eau de Parfum - Floral Blossom', 'A delicate floral fragrance that evokes the essence of blooming gardens.', 2999, 50),
    (27, 'Cologne Spray - Citrus Zest', 'A refreshing and zesty cologne spray that provides a burst of citrus notes.', 2499, 40),
    (28, 'Perfume Oil - Amber Elegance', 'Experience the warm and elegant scent of amber with this long-lasting perfume oil.', 3499, 30),
    (29, 'Eau de Toilette - Ocean Breeze', 'Capture the freshness of the ocean with this invigorating eau de toilette.', 1999, 60),
    (30, 'Scented Body Lotion - Lavender Fields', 'Hydrate your skin and enjoy the soothing scent of lavender with this scented body lotion.', 1499, 70),
     (31, 'Moisturizing Shampoo - Argan Oil', 'Hydrate and nourish your hair with this moisturizing shampoo infused with argan oil.', 1499, 60),
    (32, 'Conditioner - Coconut & Shea Butter', 'Revitalize and detangle your hair with this creamy conditioner enriched with coconut and shea butter.', 1299, 50),
    (33, 'Hair Serum - Frizz Control', 'Tame frizz and add shine to your hair with this frizz control hair serum.', 999, 70),
    (34, 'Hairspray - Strong Hold', 'Keep your hairstyle in place all day with this strong hold hairspray.', 749, 80),
    (35, 'Hair Mask - Repair & Restore', 'Repair and restore damaged hair with this nourishing and deep conditioning hair mask.', 1699, 40),
    (36, 'Hydrating Face Cream - Aloe Vera', 'Moisturize and soothe your skin with this hydrating face cream enriched with aloe vera.', 1999, 50),
    (37, 'Cleansing Foam - Tea Tree Oil', 'Gently cleanse your skin and control blemishes with this tea tree oil-infused cleansing foam.', 1499, 40),
    (38, 'Vitamin C Serum - Brightening', 'Achieve a brighter complexion and reduce the appearance of dark spots with this vitamin C serum.', 2999, 30),
    (39, 'Night Cream - Retinol Renewal', 'Revitalize your skin while you sleep with this retinol renewal night cream.', 2499, 60),
    (40, 'Sunscreen Lotion - SPF 50', 'Protect your skin from harmful UV rays with this SPF 50 sunscreen lotion for all-day sun defense.', 1249, 70);
    
    

  
  CREATE TABLE Bodycare (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);
  INSERT INTO BodyCare (ProductId, ProductName, ProductDescription, ProductPrice, AvailableQuantity)
VALUES
    (11, 'Lavender Relaxing Body Lotion', 'A soothing lavender-scented body lotion that nourishes and hydrates your skin.', 1299, 50),
    (12, 'Eucalyptus Mint Shower Gel', 'Invigorate your senses with this refreshing eucalyptus and mint scented shower gel.', 899, 40),
    (13, 'Coconut and Shea Butter Body Scrub', 'Exfoliate and moisturize with this luxurious coconut and shea butter body scrub.', 1499, 30),
    (14, 'Tea Tree and Aloe Vera Body Wash', 'A gentle body wash enriched with tea tree oil and aloe vera for sensitive skin.', 999, 45),
    (15, 'Rosehip and Argan Oil Body Serum', 'Restore your skin\'s natural radiance with this rejuvenating body serum.', 1999, 25),
    (16, 'Peppermint Foot Cream', 'Revive tired feet with this cooling peppermint-infused foot cream.', 799, 60),
    (17, 'Oatmeal and Honey Bath Bombs', 'Indulge in a soothing bath experience with these oatmeal and honey bath bombs.', 599, 75),
    (18, 'Cucumber and Green Tea Facial Cleanser', 'A gentle facial cleanser with the refreshing scent of cucumber and green tea.', 1199, 55),
    (19, 'Lavender and Chamomile Body Oil', 'Relax and unwind with this calming lavender and chamomile body oil.', 1699, 35),
    (20, 'Acai Berry Lip Balm', 'Keep your lips moisturized and protected with the nourishing acai berry lip balm.', 349, 100);
    
        
-- Create a table for cosmetics products
    CREATE TABLE Cosmetics (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);

-- Insert data for 5 cosmetics products
INSERT INTO Cosmetics (ProductId, ProductName, ProductDescription, ProductPrice, AvailableQuantity)
VALUES
    (21, 'Matte Liquid Lipstick - Ruby Red', 'Achieve a bold, long-lasting lip color with this vibrant ruby red matte liquid lipstick.', 1299, 100),
    (22, 'Nourishing Cream Foundation - Natural Beige', 'A creamy foundation that provides full coverage and nourishes your skin with natural beige tone.', 1599, 80),
    (23, 'Eyeshadow Palette - Smoky Glam', 'Create stunning smoky eye looks with this versatile eyeshadow palette featuring a range of glamorous shades.', 1899, 60),
    (24, 'Highlighter Stick - Champagne Glow', 'Add a radiant glow to your complexion with this easy-to-apply champagne-hued highlighter stick.', 899, 120),
    (25, 'Setting Spray - Dewy Finish', 'Lock your makeup in place and achieve a dewy finish with this setting spray.', 1049, 90);
    
    -- Create a table for fragrances products
  CREATE TABLE fragrances (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);

-- Insert data for 5 fragrances products
INSERT INTO Fragrances (ProductId, ProductName, ProductDescription, ProductPrice, AvailableQuantity)
VALUES
    (26, 'Eau de Parfum - Floral Blossom', 'A delicate floral fragrance that evokes the essence of blooming gardens.', 2999, 50),
    (27, 'Cologne Spray - Citrus Zest', 'A refreshing and zesty cologne spray that provides a burst of citrus notes.', 2499, 40),
    (28, 'Perfume Oil - Amber Elegance', 'Experience the warm and elegant scent of amber with this long-lasting perfume oil.', 3499, 30),
    (29, 'Eau de Toilette - Ocean Breeze', 'Capture the freshness of the ocean with this invigorating eau de toilette.', 1999, 60),
    (30, 'Scented Body Lotion - Lavender Fields', 'Hydrate your skin and enjoy the soothing scent of lavender with this scented body lotion.', 1499, 70);

-- Create a table for haircare products
 CREATE TABLE haircare (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);

-- Insert data for 5 haircare products
INSERT INTO Haircare (ProductId, ProductName, ProductDescription, ProductPrice, AvailableQuantity)
VALUES
    (31, 'Moisturizing Shampoo - Argan Oil', 'Hydrate and nourish your hair with this moisturizing shampoo infused with argan oil.', 1499, 60),
    (32, 'Conditioner - Coconut & Shea Butter', 'Revitalize and detangle your hair with this creamy conditioner enriched with coconut and shea butter.', 1299, 50),
    (33, 'Hair Serum - Frizz Control', 'Tame frizz and add shine to your hair with this frizz control hair serum.', 999, 70),
    (34, 'Hairspray - Strong Hold', 'Keep your hairstyle in place all day with this strong hold hairspray.', 749, 80),
    (35, 'Hair Mask - Repair & Restore', 'Repair and restore damaged hair with this nourishing and deep conditioning hair mask.', 1699, 40);
    
    
    -- Create a table for skincare products
  CREATE TABLE skincare (
    RegistrationId INT,
    ProductId INT NOT NULL AUTO_INCREMENT,
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
	ProductPrice VARCHAR(255),
    AvailableQuantity VARCHAR(255),
    PRIMARY KEY (ProductId)
);

-- Insert data for 5 skincare products
INSERT INTO Skincare(ProductId, ProductName, ProductDescription, ProductPrice, AvailableQuantity)
VALUES
    (36, 'Hydrating Face Cream - Aloe Vera', 'Moisturize and soothe your skin with this hydrating face cream enriched with aloe vera.', 1999, 50),
    (37, 'Cleansing Foam - Tea Tree Oil', 'Gently cleanse your skin and control blemishes with this tea tree oil-infused cleansing foam.', 1499, 40),
    (38, 'Vitamin C Serum - Brightening', 'Achieve a brighter complexion and reduce the appearance of dark spots with this vitamin C serum.', 2999, 30),
    (39, 'Night Cream - Retinol Renewal', 'Revitalize your skin while you sleep with this retinol renewal night cream.', 2499, 60),
    (40, 'Sunscreen Lotion - SPF 50', 'Protect your skin from harmful UV rays with this SPF 50 sunscreen lotion for all-day sun defense.', 1249, 70);



drop table cart;
  CREATE TABLE Cart (
    RegistrationId INT,
    ProductId int,
    ProductName VARCHAR(255),
    ProductQuantity VARCHAR(255),
    ProductPrice varchar(255),
    Total VARCHAR(255),
    FOREIGN KEY (ProductId)
        REFERENCES allProduct (ProductId)
);
drop table cart;
CREATE TABLE cart (
    ProductId INT REFERENCES product (ProductId),
    RegistrationId INT REFERENCES user (RegistrationId),
    ProductName VARCHAR(255),
    ProductDescription VARCHAR(255),
    ProductQuantity INT(50),
    ProductPrice VARCHAR(255),
    Total INT(50)
);
SELECT userregistration.RegistrationId,FirstName,LastName,City,MobileNumber,product.ProductId,ProductName,AvailableQuantity,ProductPrice from userregistration
INNER join Product on userregistration.RegistrationId=product.RegistrationId where UserName='batman';