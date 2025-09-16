# Image URLs Reference for FreshBite Menu

## Current Placeholder Images (Unsplash)
Replace these URLs with your own images uploaded to Supabase storage.

### Salads
- **Fruits & Veggie Salad**: https://images.unsplash.com/photo-1540420773420-3366772f4999?w=500

### Pasta
- **Pesto Pasta**: https://images.unsplash.com/photo-1621996346565-e3dbc353d2e5?w=500

### Combo Meals
- **Duo Combo Meal**: https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500
- **Trio Combo Meal**: https://images.unsplash.com/photo-1546833999-b9f581a1996d?w=500

### Drinks
- **Fruit Shake**: https://images.unsplash.com/photo-1553530666-ba11a7da3888?w=500
- **Green Smoothie**: https://images.unsplash.com/photo-1546171753-97d7676e4602?w=500
- **Bottled Water**: https://images.unsplash.com/photo-1548839140-29a749e1e61f?w=500
- **Softdrinks** (Sprite, Coke, Coke Zero): https://images.unsplash.com/photo-1581636625402-29b2a704ef13?w=500

### Desserts
- **Dark Choco Moist Cake**: https://images.unsplash.com/photo-1578985545062-69928b1d9587?w=500

### Rice Meals
- **Siomai Rice**: https://images.unsplash.com/photo-1512058564366-18510be2db19?w=500

## How to Update Images

1. **Upload to Supabase Storage**:
   - Go to your Supabase dashboard
   - Navigate to Storage → menu-images bucket
   - Upload your images
   - Copy the public URLs

2. **Update Database**:
   ```sql
   UPDATE menu_items 
   SET image_url = 'your-supabase-storage-url' 
   WHERE id = 'item-id';
   ```

3. **Recommended Image Specifications**:
   - Format: JPG, PNG, WebP
   - Size: 500x500px (square)
   - File size: Under 5MB
   - Quality: High resolution for web display

## Alternative Image Sources

If you need more food-specific images, consider:
- **Unsplash Food Collection**: https://unsplash.com/s/photos/healthy-salad
- **Pexels Food**: https://www.pexels.com/search/food/
- **Free Food Stock Photos**: Various free stock photo sites
