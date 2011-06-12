class SpreeEventsListHooks < Spree::ThemeSupport::HookListener
  insert_after :admin_tabs do
    %(<%= tab(:events) %>)
  end
end