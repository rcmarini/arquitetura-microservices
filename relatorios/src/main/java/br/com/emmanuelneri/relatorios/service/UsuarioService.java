package br.com.emmanuelneri.relatorios.service;

import br.com.emmanuelneri.relatorios.model.Usuario;
import br.com.emmanuelneri.relatorios.util.GenericService;
import br.com.emmanuelneri.relatorios.util.anotations.ClientWs;

import javax.inject.Inject;
import javax.inject.Named;
import javax.transaction.Transactional;
import javax.ws.rs.client.WebTarget;

@Named
public class UsuarioService extends GenericService<Usuario> {

    @Inject
    @ClientWs
    private WebTarget webTarget;

    @Transactional
    public Usuario atualizarUsuario(String email) {
        final Usuario usuarioPortal = webTarget.path("/usuario/buscar/").path(email).request().get(Usuario.class);
        final Usuario usuarioBanco = findById(usuarioPortal.getId());

        if(usuarioBanco != null && usuarioBanco.getVersion() == usuarioPortal.getVersion()) {
            return usuarioBanco;
        }

        save(usuarioPortal);

        return usuarioPortal;
    }
}
