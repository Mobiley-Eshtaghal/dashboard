console.log("✅ Hook file loaded");

export default function registerHook({ action }) {
    action('items.create', (meta, { collection, item }) => {
      if (collection === 'products') {
        console.log('🎉 New product created:', item);
      }
    });
  }
  