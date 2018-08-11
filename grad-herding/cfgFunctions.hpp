class GRAD_herding {

    class client {
        file = grad-herding\functions\client;

        class addGestureHandler;
    };

    class server {
        file = grad-herding\functions\server;

        class addEventhandler;
        class create;
        class getRandomWaypoint;
        class getWaypointFromShepherd;
        class getWaypointInPanic;
        class init {preInit = 1;};
        class loop;
        class makeSound;
        class moveAnimal;
        class removeAnimalFromHerd;
    };
    
};