require 'yaml'

require_relative '../autoload'

RSpec.shared_context 'products' do
  let(:api_collection) do
    YAML.load yaml = <<_YAML_
--- !ruby/object:ShopifyAPI::SmartCollection
attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
  body_html: Products that rely on automatic feed info from suppliers for up-to-date
    inventory.
  disjunctive: true
  handle: test-collection
  id: 30147188
  products_count: 2
  published_at:
  published_scope: web
  sort_order: alpha-asc
  template_suffix:
  title: Feedable Products
  updated_at: '2015-03-01T13:40:28-08:00'
  rules:
  - !ruby/object:ShopifyAPI::Rule
    attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
      column: tag
      relation: equals
      condition: ESS
    prefix_options: {}
    persisted: true
  - !ruby/object:ShopifyAPI::Rule
    attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
      column: tag
      relation: equals
      condition: Ocean Avenue
    prefix_options: {}
    persisted: true
prefix_options: {}
persisted: true

_YAML_
  end

  let(:api_products) do
    YAML.load yaml = <<_YAML_
---
- !ruby/object:ShopifyAPI::Product
  attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
    body_html: ''
    created_at: '2015-02-26T10:07:14-08:00'
    handle: ace-trucks-color
    id: 434773008
    product_type: Trucks
    published_at: '2015-02-26T10:02:00-08:00'
    published_scope: global
    template_suffix: ''
    title: Ace Trucks Color
    updated_at: '2015-03-02T09:35:18-08:00'
    vendor: Ace
    tags: ESS, Ocean Avenue, South Shore, Unheard Dist
    variants:
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531688'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991688
        inventory_management: shopify
        inventory_policy: deny
        option1: '33'
        option2: Black
        option3:
        position: 1
        price: '24.00'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 33 / Black
        updated_at: '2015-03-02T09:35:18-08:00'
        inventory_quantity: 0
        old_inventory_quantity: 0
        image_id: 1225500232
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531684'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991684
        inventory_management: shopify
        inventory_policy: deny
        option1: '33'
        option2: Red
        option3:
        position: 2
        price: '24.00'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 33 / Red
        updated_at: '2015-03-01T15:38:31-08:00'
        inventory_quantity: 1
        old_inventory_quantity: 1
        image_id: 1225500268
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531696'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991696
        inventory_management: shopify
        inventory_policy: deny
        option1: '44'
        option2: Black
        option3:
        position: 3
        price: '24.50'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 44 / Black
        updated_at: '2015-03-01T15:38:31-08:00'
        inventory_quantity: 0
        old_inventory_quantity: 0
        image_id: 1225500296
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531692'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991692
        inventory_management: shopify
        inventory_policy: deny
        option1: '44'
        option2: Red
        option3:
        position: 4
        price: '24.50'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 44 / Red
        updated_at: '2015-03-01T15:38:31-08:00'
        inventory_quantity: 0
        old_inventory_quantity: 0
        image_id: 1225500428
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531704'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991704
        inventory_management: shopify
        inventory_policy: deny
        option1: '55'
        option2: Black
        option3:
        position: 5
        price: '25.99'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 55 / Black
        updated_at: '2015-03-01T15:38:31-08:00'
        inventory_quantity: 0
        old_inventory_quantity: 0
        image_id: 1225500368
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73531700'
        compare_at_price:
        created_at: '2015-02-26T10:07:14-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1189991700
        inventory_management: shopify
        inventory_policy: deny
        option1: '55'
        option2: Red
        option3:
        position: 6
        price: '25.99'
        requires_shipping: true
        sku: ''
        taxable: true
        title: 55 / Red
        updated_at: '2015-03-01T15:38:31-08:00'
        inventory_quantity: 0
        old_inventory_quantity: 0
        image_id: 1225500456
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434773008
      persisted: true
    options:
    - !ruby/object:ShopifyAPI::Option
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        id: 511300492
        name: Title
        position: 1
        product_id: 434773008
      prefix_options: {}
      persisted: true
    - !ruby/object:ShopifyAPI::Option
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        id: 511300496
        name: Size
        position: 2
        product_id: 434773008
      prefix_options: {}
      persisted: true
    images:
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:54-08:00'
        id: 1225500232
        position: 1
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/aceh-33-blk_3_1.jpg?v=1424978353
        variant_ids:
        - 1189991688
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:55-08:00'
        id: 1225500268
        position: 2
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/aceh-33-red_1_1.jpg?v=1424978353
        variant_ids:
        - 1189991684
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:57-08:00'
        id: 1225500296
        position: 3
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/aceh-44-blk_3_2.jpg?v=1424978353
        variant_ids:
        - 1189991696
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:59-08:00'
        id: 1225500428
        position: 4
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/acetrucks-42.jpg?v=1424978353
        variant_ids:
        - 1189991692
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:58-08:00'
        id: 1225500368
        position: 5
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/aceh-55-blk_3_2.jpg?v=1424978353
        variant_ids:
        - 1189991704
      prefix_options:
        :product_id: 434773008
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:19:01-08:00'
        id: 1225500456
        position: 6
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/acetrucks-45.jpg?v=1424978353
        variant_ids:
        - 1189991700
      prefix_options:
        :product_id: 434773008
      persisted: true
    image: !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T11:18:54-08:00'
        id: 1225500232
        position: 1
        updated_at: '2015-02-26T11:19:13-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/aceh-33-blk_3_1.jpg?v=1424978353
        variant_ids:
        - 1189991688
      prefix_options:
        :product_id: 434773008
      persisted: true
  prefix_options: &70216047773040 {}
  persisted: true
- !ruby/object:ShopifyAPI::Product
  attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
    body_html: ''
    created_at: '2015-02-26T10:44:16-08:00'
    handle: paris-180mm-43-degree
    id: 434798744
    product_type: Trucks
    published_at: '2015-02-26T10:35:00-08:00'
    published_scope: global
    template_suffix: ''
    title: Paris 180mm 43 Degree
    updated_at: '2015-03-01T15:38:32-08:00'
    vendor: Paris
    tags: ESS, Ocean Avenue, Resource, South Shore
    variants:
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73575540'
        compare_at_price:
        created_at: '2015-02-26T10:44:16-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1190035540
        inventory_management: shopify
        inventory_policy: deny
        option1: Gold
        option2:
        option3:
        position: 1
        price: '50.00'
        requires_shipping: true
        sku: ''
        taxable: true
        title: Gold
        updated_at: '2015-03-01T15:38:32-08:00'
        inventory_quantity: 1
        old_inventory_quantity: 1
        image_id: 1225440416
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434798744
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73575532'
        compare_at_price:
        created_at: '2015-02-26T10:44:16-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1190035532
        inventory_management: shopify
        inventory_policy: deny
        option1: Black
        option2:
        option3:
        position: 2
        price: '50.00'
        requires_shipping: true
        sku: ''
        taxable: true
        title: Black
        updated_at: '2015-03-01T15:38:32-08:00'
        inventory_quantity: 1
        old_inventory_quantity: 1
        image_id: 1225440408
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434798744
      persisted: true
    - !ruby/object:ShopifyAPI::Variant
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        barcode: '73575536'
        compare_at_price:
        created_at: '2015-02-26T10:44:16-08:00'
        fulfillment_service: manual
        grams: 0
        id: 1190035536
        inventory_management: shopify
        inventory_policy: deny
        option1: Raw
        option2:
        option3:
        position: 3
        price: '50.00'
        requires_shipping: true
        sku: ''
        taxable: true
        title: Raw
        updated_at: '2015-03-01T15:38:32-08:00'
        inventory_quantity: 1
        old_inventory_quantity: 1
        image_id: 1225440420
        weight: 0
        weight_unit: g
      prefix_options:
        :product_id: 434798744
      persisted: true
    options:
    - !ruby/object:ShopifyAPI::Option
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        id: 511329996
        name: Color
        position: 1
        product_id: 434798744
      prefix_options: {}
      persisted: true
    images:
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T10:44:16-08:00'
        id: 1225440416
        position: 1
        updated_at: '2015-02-26T10:44:29-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/1599_180-43deg-Gold-565x565.jpg?v=1424976269
        variant_ids:
        - 1190035540
      prefix_options:
        :product_id: 434798744
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T10:44:16-08:00'
        id: 1225440408
        position: 2
        updated_at: '2015-02-26T10:44:29-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/1597_180-43deg-Black-565x565.jpg?v=1424976269
        variant_ids:
        - 1190035532
      prefix_options:
        :product_id: 434798744
      persisted: true
    - !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T10:44:16-08:00'
        id: 1225440420
        position: 3
        updated_at: '2015-02-26T10:44:29-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/1601_180-43deg-Raw-565x565.jpg?v=1424976269
        variant_ids:
        - 1190035536
      prefix_options:
        :product_id: 434798744
      persisted: true
    image: !ruby/object:ShopifyAPI::Image
      attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
        created_at: '2015-02-26T10:44:16-08:00'
        id: 1225440416
        position: 1
        updated_at: '2015-02-26T10:44:29-08:00'
        src: https://cdn.shopify.com/s/files/1/0740/4315/products/1599_180-43deg-Gold-565x565.jpg?v=1424976269
        variant_ids:
        - 1190035540
      prefix_options:
        :product_id: 434798744
      persisted: true
  prefix_options: *70216047773040
  persisted: true

_YAML_
  end

  let(:supper_variants) do
    Supper::Collection.map_to_variants api_products
  end

  let(:variant) do
    supper_variants.first
  end

  let(:metafields) do
    YAML.load yaml = <<_YAML_
---
- !ruby/object:ShopifyAPI::Metafield
  attributes: !ruby/hash:ActiveSupport::HashWithIndifferentAccess
    created_at: '2015-03-04T16:43:17-08:00'
    description:
    id: 1838605116
    key: available
    namespace: supper
    owner_id: 434773008
    updated_at: '2015-03-04T16:43:17-08:00'
    value: 1
    value_type: integer
    owner_resource: product
  prefix_options:
    :resource: products
    :resource_id: 434773008
  persisted: true

_YAML_

  end
end
