nginx:
   service-name: Journals
   contact-email: eresearch@jcu.edu.au

shibboleth:
   host: journals.jcu.io
   entityID: https://journals.jcu.io/shibboleth
   REMOTE_USER: auEduPersonSharedToken eppn persistent-id targeted-id
   supportContact: david.beitey@jcu.edu.au
   hosts:
      journals.jcu.io:
         paths:
            '/':
               requireSession: 'false'
