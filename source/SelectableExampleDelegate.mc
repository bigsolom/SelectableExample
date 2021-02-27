using Toybox.WatchUi;

class SelectableExampleDelegate extends WatchUi.BehaviorDelegate {

    function initialize() {
        BehaviorDelegate.initialize();
    }

    function onSelectable(event) {
        var instance = event.getInstance();

        if (instance.getState() == :stateSelected) {
            handleSelectedState(instance);
        }
        return true;
    }

    function handleSelectedState(instance) {
        if(instance instanceof Selectables.Up) {
            System.println("up");
        } else if (instance instanceof Selectables.Down) {
            System.println("down");
        }
    }

}