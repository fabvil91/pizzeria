(function(){
    'use strict';
    angular.module('pizzeria')
    .controller('PizzeriaController', ['$scope', 'UserService', function($scope, UserService) {
        var self = this;
        self.user={id:null,username:'',address:'',email:''};
        self.users=[];
        self.showPriceDetail = false;
        self.priceShown = {};

        self.showDetail = showDetail;
        self.submit = submit;
        self.edit = edit;
        self.remove = remove;
        self.reset = reset;
        
        self.myInterval = 3000;
        self.slides = [{  id: "1",
                            imageUrl: 'https://u.tfstatic.com/restaurant_photos/479/66479/169/612/pizzeria-da-gennaro-vista-sala-5d811.jpg'                                          
                       },
                       {id: "2", 
                        imageUrl: 'https://ak5.picdn.net/shutterstock/videos/8009707/thumb/1.jpg'
                       },
                       { id: "3", 
                        imageUrl: 'http://exploresrilanka.lk/wp-content/uploads/2013/10/22-copy.jpg'
                       }
                      ];
        self.precios = [{  id: "1",
                           nombre: "Muzzarella",
                           chica: 120,
                           grande:  150,
                           descripcion: "Con mucha Muzzarella, es la especialidad de la casa"                                         
                       },
                       {id: "2", 
                        nombre: 'Americana',
                        chica: 140,
                        grande: 180,
                        descripcion: "Mucho tomate, Muzzarella y cebolla hacen un manjar de esta pizza"
                       },
                       { id: "3", 
                        nombre: 'Anchoas',
                        chica: 175,
                        grande: 200,
                        descripcion: "El acompañamiento de las anchoas a la Muzzarella da un sabor único"
                       }
                      ];              
        self.noWrapSlides = false;
        self.active = 0;

        fetchAllUsers();

        function fetchAllUsers(){
            UserService.fetchAllUsers()
                .then(
                function(d) {
                    self.users = d;
                },
                function(errResponse){
                    console.error('Error while fetching Users');
                }
            );
        }

        function showDetail(price){
            self.showPriceDetail = true;
            self.priceShown = price;
        }

        function createUser(user){
            UserService.createUser(user)
                .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while creating User');
                }
            );
        }

        function updateUser(user, id){
            UserService.updateUser(user, id)
                .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while updating User');
                }
            );
        }

        function deleteUser(id){
            UserService.deleteUser(id)
                .then(
                fetchAllUsers,
                function(errResponse){
                    console.error('Error while deleting User');
                }
            );
        }

        function submit() {
            if(self.user.id===null){
                console.log('Saving New User', self.user);
                createUser(self.user);
            }else{
                updateUser(self.user, self.user.id);
                console.log('User updated with id ', self.user.id);
            }
            reset();
        }

        function edit(id){
            console.log('id to be edited', id);
            for(var i = 0; i < self.users.length; i++){
                if(self.users[i].id === id) {
                    self.user = angular.copy(self.users[i]);
                    break;
                }
            }
        }

        function remove(id){
            console.log('id to be deleted', id);
            if(self.user.id === id) {//clean form if the user to be deleted is shown there.
                reset();
            }
            deleteUser(id);
        }


        function reset(){
            self.user={id:null,username:'',address:'',email:''};
            $scope.myForm.$setPristine(); //reset Form
        }

}]);
})();