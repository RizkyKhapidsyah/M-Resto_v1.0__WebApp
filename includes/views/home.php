<?php render('_header',array('title'=>$title))?>


<p>SELAMAT DATANG DI MOBILE-RESTO</p>

<ul data-role="listview" data-inset="true" data-theme="c" data-dividertheme="b">
    <li data-role="list-divider">Pilih Category Barang</li>
    <?php render($content) ?>
</ul>

<?php render('_footer')?>