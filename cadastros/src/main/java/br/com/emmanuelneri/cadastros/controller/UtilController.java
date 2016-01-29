package br.com.emmanuelneri.cadastros.controller;

import br.com.emmanuelneri.cadastros.util.ApplicationProperty;
import br.com.emmanuelneri.integrador.anotations.UsuarioLogado;
import br.com.emmanuelneri.integrador.autenticacao.TokenUsuarioUtil;
import br.com.emmanuelneri.integrador.vo.ModuloVO;
import br.com.emmanuelneri.integrador.vo.UsuarioVO;
import org.omnifaces.util.Faces;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.inject.Named;
import java.io.IOException;

@Named
@RequestScoped
public class UtilController {

    @Inject
    @UsuarioLogado
    private UsuarioVO usuario;

    @Inject
    private ApplicationProperty configuracao;

    public void redirectAplicacao(ModuloVO moduloMenu) throws IOException {
        final String token = TokenUsuarioUtil.createToken(usuario, moduloMenu);
        Faces.redirect(moduloMenu.getUrl() + "?token=%s&", token);
    }

    public UsuarioVO getUsuario() {
        return usuario;
    }

    public ApplicationProperty getConfiguracao() {
        return configuracao;
    }
}
