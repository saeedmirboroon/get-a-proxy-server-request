  use LWP::Simple;                                                            
  use HTTP::Request; use HTTP::Response; use URI::Heuristic ;                 
  use LWP::UserAgent;                                                         
  print "this app to make a request proxy if you have a good server \n proxy e
  $ua = LWP::UserAgent->new;
  $ENV{HTTP_proxy} = "https://185.66.59.224:42647";
  $ua->env_proxy; # initialize from environment variables
  my $req = HTTP::Request->new(GET => 'http://google.com/');
  print $ua->request($req)->as_string;
  delete $ENV{HTTP_PROXY};             
