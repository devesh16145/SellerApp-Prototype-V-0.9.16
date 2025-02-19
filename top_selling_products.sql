-- Create the top_selling_products table
CREATE TABLE top_selling_products (
  id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
  product_id UUID REFERENCES products(id) NOT NULL,
  sales_count INTEGER NOT NULL DEFAULT 0,
  ranking INTEGER,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  updated_at TIMESTAMPTZ DEFAULT NOW()
);

-- Insert dummy data into top_selling_products
INSERT INTO top_selling_products (product_id, sales_count, ranking)
VALUES
  ('PRODUCT_1_ID', 150, 1), -- Replace 'PRODUCT_1_ID' with the actual UUID of 'Organic Rice' from your products table
  ('PRODUCT_2_ID', 120, 2);  -- Replace 'PRODUCT_2_ID' with the actual UUID of 'Fresh Tomatoes' from your products table

-- You can add more dummy products as needed.
-- Make sure to replace 'PRODUCT_1_ID' and 'PRODUCT_2_ID' with the actual UUIDs from your products table.
-- You can find these IDs in your Supabase products table.
