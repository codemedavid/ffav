/*
  # Healthy Food Menu Items
  FreshBite - Healthy Food Restaurant
  
  This SQL file contains all menu items, variations, and add-ons for the healthy food restaurant.
  Run this after setting up your Supabase database with the existing migrations.
*/

-- First, let's update the existing categories to match our healthy food theme
UPDATE categories SET 
  name = 'Salads',
  icon = '🥗',
  sort_order = 1
WHERE id = 'hot-coffee';

UPDATE categories SET 
  name = 'Pasta',
  icon = '🍝',
  sort_order = 2
WHERE id = 'iced-coffee';

UPDATE categories SET 
  name = 'Drinks',
  icon = '🥤',
  sort_order = 3
WHERE id = 'non-coffee';

UPDATE categories SET 
  name = 'Desserts',
  icon = '🍰',
  sort_order = 4
WHERE id = 'food';

-- Add new categories for our healthy food menu
INSERT INTO categories (id, name, icon, sort_order, active) VALUES
  ('combo-meals', 'Combo Meals', '🍽️', 5, true),
  ('rice-meals', 'Rice Meals', '🍚', 6, true),
  ('add-ons', 'Add-ons', '➕', 7, true)
ON CONFLICT (id) DO NOTHING;

-- Clear existing menu items to start fresh
DELETE FROM add_ons;
DELETE FROM variations;
DELETE FROM menu_items;

-- ========================================
-- SALADS
-- ========================================

-- Fruits & Veggie Salad
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Fruits & Veggie Salad', 'Fresh mixed greens with seasonal fruits and vegetables, perfect for a healthy meal', 95.00, 'hot-coffee', true, true, 'https://images.unsplash.com/photo-1540420773420-3366772f4999?w=500');

-- Get the ID for Fruits & Veggie Salad
DO $$
DECLARE
    salad_id uuid;
BEGIN
    SELECT id INTO salad_id FROM menu_items WHERE name = 'Fruits & Veggie Salad';
    
    -- Add variations for Fruits & Veggie Salad
    INSERT INTO variations (menu_item_id, name, price) VALUES
      (salad_id, 'Whole', 0.00),
      (salad_id, 'Half', -45.00);
END $$;

-- ========================================
-- PASTA
-- ========================================

-- Pesto Pasta
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Pesto Pasta', 'Fresh basil pesto pasta with cherry tomatoes and parmesan cheese', 95.00, 'iced-coffee', true, true, 'https://images.unsplash.com/photo-1621996346565-e3dbc353d2e5?w=500');

-- Get the ID for Pesto Pasta
DO $$
DECLARE
    pasta_id uuid;
BEGIN
    SELECT id INTO pasta_id FROM menu_items WHERE name = 'Pesto Pasta';
    
    -- Add variations for Pesto Pasta
    INSERT INTO variations (menu_item_id, name, price) VALUES
      (pasta_id, 'Whole', 0.00),
      (pasta_id, 'Half', -45.00);
END $$;

-- ========================================
-- COMBO MEALS
-- ========================================

-- Duo Combo Meal
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Duo Combo Meal', 'Pasta + Salad combo for a complete healthy meal', 95.00, 'combo-meals', true, true, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500');

-- Trio Combo Meal
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Trio Combo Meal', 'Pasta + Salad + Topping of your choice for the ultimate healthy meal', 120.00, 'combo-meals', true, true, 'https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500');

-- Get the ID for Trio Combo Meal and add variations
DO $$
DECLARE
    trio_id uuid;
BEGIN
    SELECT id INTO trio_id FROM menu_items WHERE name = 'Trio Combo Meal';
    
    -- Add variations for Trio Combo Meal
    INSERT INTO variations (menu_item_id, name, price) VALUES
      (trio_id, 'Pasta + Salad + New Yorker Hotdog', 0.00),
      (trio_id, 'Pasta + Salad + Siomai', 0.00),
      (trio_id, 'Pasta + Salad + Chicken', 0.00);
END $$;

-- ========================================
-- DRINKS
-- ========================================

-- Fruit Shake
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Fruit Shake', 'Fresh fruit blended with ice for a refreshing healthy drink', 55.00, 'non-coffee', true, true, 'https://images.unsplash.com/photo-1553530666-ba11a7da3888?w=500');

-- Green Smoothie
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Green Smoothie', 'Nutrient-packed green smoothie with spinach, kale, and tropical fruits', 55.00, 'non-coffee', true, true, 'https://images.unsplash.com/photo-1546171753-97d7676e4602?w=500');

-- Bottled Water
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Bottled Water', 'Pure, refreshing bottled water', 15.00, 'non-coffee', false, true, 'https://images.unsplash.com/photo-1548839140-29a749e1e61f?w=500');

-- Softdrinks
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Sprite', 'Crisp and refreshing lemon-lime soda', 20.00, 'non-coffee', false, true, 'https://images.unsplash.com/photo-1581636625402-29b2a704ef13?w=500'),
  ('Coke', 'Classic Coca-Cola soft drink', 20.00, 'non-coffee', false, true, 'https://images.unsplash.com/photo-1581636625402-29b2a704ef13?w=500'),
  ('Coke Zero', 'Zero sugar Coca-Cola with the same great taste', 20.00, 'non-coffee', false, true, 'https://images.unsplash.com/photo-1581636625402-29b2a704ef13?w=500');

-- ========================================
-- DESSERTS
-- ========================================

-- Dark Choco Moist Cake
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Dark Choco Moist Cake', 'Rich and moist dark chocolate cake - a perfect healthy indulgence', 130.00, 'food', true, true, 'https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500');

-- ========================================
-- RICE MEALS
-- ========================================

-- Siomai Rice
INSERT INTO menu_items (name, description, base_price, category, popular, available, image_url) VALUES
  ('Siomai Rice', 'Steamed siomai served with steamed rice - a healthy and satisfying meal', 65.00, 'rice-meals', true, true, 'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500');

-- ========================================
-- ADD-ONS
-- ========================================

-- Add add-ons using the proper UUID references
DO $$
DECLARE
    trio_id uuid;
    duo_id uuid;
    salad_id uuid;
BEGIN
    -- Get IDs for items that need add-ons
    SELECT id INTO trio_id FROM menu_items WHERE name = 'Trio Combo Meal';
    SELECT id INTO duo_id FROM menu_items WHERE name = 'Duo Combo Meal';
    SELECT id INTO salad_id FROM menu_items WHERE name = 'Fruits & Veggie Salad';
    
    -- Topping for Combo Meal
    INSERT INTO add_ons (menu_item_id, name, price, category) VALUES
      (trio_id, 'New Yorker Hotdog', 0.00, 'toppings'),
      (trio_id, 'Siomai', 0.00, 'toppings'),
      (trio_id, 'Chicken', 0.00, 'toppings');

    -- General Add-ons (can be added to any item)
    INSERT INTO add_ons (menu_item_id, name, price, category) VALUES
      (duo_id, 'Extra Topping', 25.00, 'toppings'),
      (trio_id, 'Extra Topping', 25.00, 'toppings');

    -- Salad Dressings
    INSERT INTO add_ons (menu_item_id, name, price, category) VALUES
      (salad_id, 'Vinaigrette Dressing', 5.00, 'dressings'),
      (salad_id, 'Yogurt Dressing', 15.00, 'dressings');
END $$;

-- ========================================
-- UPDATE CATEGORY NAMES TO MATCH OUR THEME
-- ========================================

-- Update the category names to be more descriptive
UPDATE categories SET name = 'Fresh Salads' WHERE id = 'hot-coffee';
UPDATE categories SET name = 'Healthy Pasta' WHERE id = 'iced-coffee';
UPDATE categories SET name = 'Refreshing Drinks' WHERE id = 'non-coffee';
UPDATE categories SET name = 'Sweet Treats' WHERE id = 'food';

-- ========================================
-- SAMPLE DATA COMPLETION MESSAGE
-- ========================================

-- This completes the healthy food menu setup
-- All items include:
-- - Proper categorization
-- - Price variations where applicable
-- - Add-ons for customization
-- - Popular items marked
-- - Placeholder images from Unsplash

-- Next steps:
-- 1. Replace placeholder image URLs with your own images
-- 2. Upload images to your Supabase storage bucket 'menu-images'
-- 3. Update the image_url fields with your actual image URLs
-- 4. Test the menu in your application
