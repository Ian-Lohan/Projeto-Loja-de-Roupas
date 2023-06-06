package view;

import dal.UsuarioDAL;
import dao.Usuario;
import connections.Conexao;

import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.sql.Connection;
import java.sql.SQLException;

public class EdtUsuarioView extends JFrame {
    private UsuarioDAL usuarioDAL;
    private JTextField textFieldNome;
    private JTextField textFieldLogin;
    private JTextField textFieldSenha;
    private JTextField textFieldCpf;
    private JTextField textFieldEndereco;
    private JTextField textFieldNumero;
    private JComboBox<Integer> comboBoxAcesso;
    private Usuario usuario;

    public EdtUsuarioView(Usuario usuario) {
        this.usuario = usuario;

        setTitle("Editar Usuário");
        setDefaultCloseOperation(JFrame.DISPOSE_ON_CLOSE);
        setBounds(100, 100, 310, 400);
        getContentPane().setLayout(null);

        JLabel lblNome = new JLabel("Nome:");
        lblNome.setBounds(30, 30, 80, 20);
        getContentPane().add(lblNome);

        textFieldNome = new JTextField();
        textFieldNome.setBounds(120, 30, 150, 20);
        getContentPane().add(textFieldNome);
        textFieldNome.setColumns(10);

        JLabel lblLogin = new JLabel("Login:");
        lblLogin.setBounds(30, 70, 80, 20);
        getContentPane().add(lblLogin);

        textFieldLogin = new JTextField();
        textFieldLogin.setBounds(120, 70, 150, 20);
        getContentPane().add(textFieldLogin);
        textFieldLogin.setColumns(10);

        JLabel lblSenha = new JLabel("Senha:");
        lblSenha.setBounds(30, 110, 80, 20);
        getContentPane().add(lblSenha);

        textFieldSenha = new JTextField();
        textFieldSenha.setBounds(120, 110, 150, 20);
        getContentPane().add(textFieldSenha);
        textFieldSenha.setColumns(10);

        JLabel lblCpf = new JLabel("CPF:");
        lblCpf.setBounds(30, 150, 80, 20);
        getContentPane().add(lblCpf);

        textFieldCpf = new JTextField();
        textFieldCpf.setBounds(120, 150, 150, 20);
        getContentPane().add(textFieldCpf);
        textFieldCpf.setColumns(10);

        JLabel lblEndereco = new JLabel("Endereço:");
        lblEndereco.setBounds(30, 190, 80, 20);
        getContentPane().add(lblEndereco);

        textFieldEndereco = new JTextField();
        textFieldEndereco.setBounds(120, 190, 150, 20);
        getContentPane().add(textFieldEndereco);
        textFieldEndereco.setColumns(10);

        JLabel lblNumero = new JLabel("Número:");
        lblNumero.setBounds(30, 230, 80, 20);
        getContentPane().add(lblNumero);

        textFieldNumero = new JTextField();
        textFieldNumero.setBounds(120, 230, 150, 20);
        getContentPane().add(textFieldNumero);
        textFieldNumero.setColumns(10);

        JLabel lblAcesso = new JLabel("Acesso:");
        lblAcesso.setBounds(30, 270, 80, 20);
        getContentPane().add(lblAcesso);

        comboBoxAcesso = new JComboBox<>();
        comboBoxAcesso.setBounds(120, 270, 150, 20);
        comboBoxAcesso.addItem(1); // Admin
        comboBoxAcesso.addItem(2); // Usuário
        getContentPane().add(comboBoxAcesso);

        JButton btnSalvar = new JButton("Salvar");
        btnSalvar.setBounds(170, 310, 100, 30);
        getContentPane().add(btnSalvar);

        textFieldNome.setText(usuario.getNome());
        textFieldLogin.setText(usuario.getLogin());
        textFieldSenha.setText(usuario.getSenha());
        textFieldCpf.setText(String.valueOf(usuario.getCpf()));
        textFieldEndereco.setText(usuario.getEndereco());
        textFieldNumero.setText(String.valueOf(usuario.getNumero()));
        comboBoxAcesso.setSelectedItem(usuario.getAcesso());

        btnSalvar.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                String nome = textFieldNome.getText();
                String login = textFieldLogin.getText();
                String senha = textFieldSenha.getText();
                int cpf = Integer.parseInt(textFieldCpf.getText());
                String endereco = textFieldEndereco.getText();
                int numero = Integer.parseInt(textFieldNumero.getText());
                int acesso = (int) comboBoxAcesso.getSelectedItem();

                if (editarUsuario(nome, login, senha, cpf, endereco, numero, acesso)) {
                    JOptionPane.showMessageDialog(EdtUsuarioView.this, "Usuário editado com sucesso!");
                    dispose();
                } else {
                    JOptionPane.showMessageDialog(EdtUsuarioView.this, "Erro ao editar usuário!");
                }
            }
        });
    }

    private boolean editarUsuario(String nome, String login, String senha, int cpf, String endereco, int numero, int acesso) {
        try {
            Connection conn = Conexao.ConectarBanco();
            usuarioDAL = new UsuarioDAL(conn);

            usuario.setNome(nome);
            usuario.setLogin(login);
            usuario.setSenha(senha);
            usuario.setCpf(cpf);
            usuario.setEndereco(endereco);
            usuario.setNumero(numero);
            usuario.setAcesso(acesso);

            usuarioDAL.editarUsuario(usuario);

            conn.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            Usuario usuario = new Usuario();
            EdtUsuarioView frame = new EdtUsuarioView(usuario);
            frame.setVisible(true);
        });
    }
}