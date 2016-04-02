package br.com.emmanuelneri.vendas.service;

import br.com.emmanuelneri.integrador.service.GenericService;
import br.com.emmanuelneri.vendas.exception.ValidationException;
import br.com.emmanuelneri.vendas.model.Pedido;
import br.com.emmanuelneri.vendas.model.enuns.SituacaoPedido;

import javax.inject.Inject;
import javax.inject.Named;
import javax.transaction.Transactional;
import java.time.LocalDate;
import java.util.List;

@Named
public class PedidoService extends GenericService<Pedido, Long> {

    @Inject
    private IntegracaoPedidoService integracaoPedidoService;

    @Transactional
    public void salvar(Pedido pedido) throws ValidationException {

        if (pedido.getCliente() == null) {
            throw new ValidationException("O pedido deve conter um cliente");
        }

        if (pedido.getItens().isEmpty()) {
            throw new ValidationException("O pedido deve conter ao menos um item");
        }

        if (!pedido.isPedidoEditavel()) {
            throw new ValidationException("Apenas pedidos abertos podem ser alterados");
        }

        save(pedido);
        integracaoPedidoService.enviarPedido(pedido);
    }

    @Transactional
    public void finalizar(Pedido pedido) {
        pedido.setDataFinalizacao(LocalDate.now());
        pedido.setSituacaoPedido(SituacaoPedido.FINALIZADO);
        save(pedido);
    }

    public Pedido findPedidoCompletoById(Long id) {
        @SuppressWarnings("unchecked")
        final List<Pedido> pedidos = getEntityManager().createNamedQuery("Pedido.findPedidoCompletoById")
                .setParameter("id", id).getResultList();

        return getResultOrNull(pedidos);
    }
}
