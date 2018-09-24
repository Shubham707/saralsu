<?php defined('BASEPATH') OR exit('No direct script access allowed');
class User_Authentication extends CI_Controller
{
    function __construct() {
        parent::__construct();
        $this->load->library('facebook');
        //$this->load->library('google');
        $this->load->model('user');
    }
    
    public function index(){
        $userData = array();
        if(isset($_GET['code'])){
            //authenticate user
            $this->google->getAuthenticate();
            
            //get user info from google
            $gpInfo = $this->google->getUserInfo();
            
            //preparing data for database insertion
            $userData['oauth_provider'] = 'google';
            $userData['oauth_uid']      = $gpInfo['id'];
            $userData['first_name']     = $gpInfo['given_name'];
            $userData['last_name']      = $gpInfo['family_name'];
            $userData['email']          = $gpInfo['email'];
            $userData['gender']         = !empty($gpInfo['gender'])?$gpInfo['gender']:'';
            $userData['locale']         = !empty($gpInfo['locale'])?$gpInfo['locale']:'';
            $userData['profile_url']    = !empty($gpInfo['link'])?$gpInfo['link']:'';
            $userData['picture_url']    = !empty($gpInfo['picture'])?$gpInfo['picture']:'';
            
            //insert or update user data to the database
            $userID = $this->user->checkUser($userData);
            
            //store status & user info in session
            $this->session->set_userdata('loggedIn', true);
            $this->session->set_userdata('userData', $userData);
            
            //redirect to profile page
            redirect('user_authentication/profile/');
        } else{
            // Get login URL
            $data['authURL'] =  $this->facebook->login_url();
        }
        
        // Load login & profile view
        $this->load->view('user_authentication/index',$data);
    }

    public function logout() {
        // Remove local Facebook session
        $this->facebook->destroy_session();
        // Remove user data from session
        $this->session->unset_userdata('userData');
        // Redirect to login page
        redirect('/user_authentication');
    }
}